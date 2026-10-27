# LateGamePerf —— 游戏侧后期卡顿改造（LoaderSettings 第三子工程）

> 与 `MissionLazyLoad` 同样的形态：逻辑尽量写在 Java（`java\src` 新增类 + `java\stubs` 编译桩），
> 必须改包内既有方法时才写极短的 smali 转发。

## 为什么做

玩家实测日志（3000×1920、Adreno、512MB Java 堆）显示：

- 看海 5 档时 `FPS=8~34`，而暂停/低速可到 80~91 → 瓶颈在**游戏线程日结算**，不是渲染；
- `native` 堆 3 分钟内 790 → 853MB，且在持续增长；
- 源码核对：整合包把 `GAME_UPDATE_MINIMAP` 设为 **1**，于是**每天**都会执行
  `MapBG.drawMinimapTexture_Generate()`：整张 `glReadPixels` 回读 + 最多 3 次全图省份重绘
  + `new Texture(...)`；而该处 `ScreenUtils.getFrameBufferPixmap()` 返回的 **Pixmap 从未 dispose**
  （libGDX 的 `Texture(Pixmap)` 不会替你释放），每天都会产生一块直接缓冲垃圾。

## 本版做了三件事

| # | 位置 | 改动 |
|---|---|---|
| 1 | `GameThread.updateMinimap()` | 整个方法替换为 `invoke-static LatePerf.updateMinimap()` —— 小地图重建间隔强制 **≥7 天**（配置更大时以配置为准），并记录日结算起点 |
| 2 | `SaveGameManager.autosave()` | 方法入口插入 `LatePerf.onDayTickEnd()` —— 日结算耗时 ≥150ms 时输出 `logcat`（tag `lateperf`），每 300 天汇总一次 avg/max |
| 3 | `MapBG`（4 处） | 在 `new Texture(ScreenUtils.getFrameBufferPixmap(...))` 之后补 `Pixmap.dispose()`：两处小地图 + 两处预览图，消除 native 直接缓冲垃圾 |

> 第 1 项即使玩家/模组把 `GV_GameUpdate.json` 改回 1 也生效，是配置层优化的兜底；
> 想更省可以在 `PerfPack` 里把 `GAME_UPDATE_MINIMAP` 设成 31/365。

## v2 追加：行军线（盟友 AI 高频调动）优化

`ProvinceDraw.drawMoveUnits_Just()` 每帧会遍历**所有国家**的行军单位做 `update()`，
并把**所有盟友/附庸 + 玩家**的行军线交给 `MoveUnits.draw()/draw_Ally()` 绘制；
而这两个方法**每条线每帧**都 `new Array<Vector2>()` + 逐点 `new Vector2(x,y)` + `shapeDrawer.path(SMOOTH)`
→ 后期盟友多、军队多时，每帧上千临时对象 + 大量三角化，正是"地图全是引导线"时的卡顿与 GC 抖动来源。

| # | 位置 | 改动 |
|---|---|---|
| 4 | `MoveUnits.draw` / `draw_Ally` | 路径数组与逐点 `Vector2` 改为 **`PathPool` 复用**（`buf()`/`vec()`），不再每帧分配（每方法 1 个 Array + 6 处点分配全部替换） |
| 5 | `ProvinceDraw.drawMoveUnits_Just` | **只包盟友/附庸**的两处 `draw_Ally` 调用 → **`MoveCull.drawAlly`**；玩家自己的那处 `draw()` **保持原版不做任何剔除** |

### v20b 修正（2026-10-21）:自己的引导线消失了

v20 的两个 bug：

1. 把**玩家自己**的 `draw()` 也包进了 `MoveCull.drawPlayer` → 自己的线也被剔；
2. 坐标公式漏了 `mapBG.getWidth()` 并且拿省中心做近似 → 屏幕 X 恒偏一个地图宽，结果几乎全部被剔掉。

现在 `MoveCull` 与 `MoveUnits.buildLine()/draw_Ally()` **完全同源**：

```
controlX = province.iCenterShiftX  (centerShiftX > mapBG.width/2 时再 -width)
controlY = -province.iCenterShiftY
screenX  = (controlX + mapCoords.getPosX() + mapBG.getWidth()) * nScale
screenY  = (controlY - mapCoords.getPosY()) * nScale
```

- 包围盒取 **起点 / 下一段 / 终点** 三个控制点，并外扩 `max(128px, 25% 视口长边)`，只剔“整条路线都在一屏之外”的线；
- `isBelowZero`（跨日界线路线）/ 省取不到 / `nScale` 异常 / 任何异常 → **fail-open 照常画**；
- 打补丁时会把旧的 `MoveCull.drawPlayer` 自动还原成原版 `invoke-virtual ... MoveUnits->draw`。

统计：`LatePerf.statsText()` 会输出 `allyLine=已画/总数`（每次读取后清零），
与日结算耗时一起通过 G3DArmy 状态日志显示（见下）。

### 诊断日志怎么看到

`android.util.Log`（tag `lateperf`）在部分设备上 `adb logcat` 看不到，
所以 `LatePerf.statsText()` 由 **G3DArmy 状态日志**反射读取并附在末尾（`hotloader.log` 可见）：

```
状态: ... FPS=.. 堆=.. 耗时=list=../..ms render=../..ms 加载=.. lateperf=dayTick avg=..ms max=..ms slow=../.. allyLine=../..
```

- `allyLine=已画/总数`：**只统计盟友/附庸**的剔除比例；若 `已画/总数` 很低说明大量线在屏幕外（剔除生效）；
- `dayTick avg/max`：日结算耗时（>=150ms 的慢日也会单独打 `lateperf` logcat）。

> 注：v32 起已移除每帧的行军线耗时探针（`moveBegin/moveEnd`、`allyUs`、`lineFrame`、`bb`）——
> 它们是当时定位“引导线到底贵不贵”用的，问题已解决且有每帧 `nanoTime` 成本；剔除本体保留。

### 耗时日志示例

```
I lateperf: day tick 214ms (turn=1187, slow=3/240, max=214ms)
I lateperf: day tick avg=18ms max=214ms slow=3/300
```

- `slow=` 慢速日计数；若慢速日集中在战事爆发/月结，可据此继续定位下一个热点。

## 目录

```
LateGamePerf\
├─ patches\
│  └─ GameThread__updateMinimap.smali   ← 替换整个方法块(3 行转发)
└─ tools\
   └─ apply-patch.ps1                    ← 反汇编缺失 baseline 类 + 应用三处改动(幂等)
```

Java 逻辑：`..\java\src\com\saysky\lateperf\LatePerf.java`
编译桩：`..\java\stubs\`（`Game_Calendar`、`MapBG`、`android.util.Log`，并扩展了 `Game.mapBG` / `GameValues.gameUpdate`）

## 构建

无需单独操作：`LoaderSettings\build-dex.bat` → `tools\merge.ps1` 末尾（第 12 段）自动调用
`LateGamePerf\tools\apply-patch.ps1`。

单独运行：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\LoaderSettings\LateGamePerf\tools\apply-patch.ps1
# 可选： -FinalSmali <dir>  -PackageDir <解包目录>  -Baksmali <jar>  -JavaExe <java.exe>
```

产物：`LoaderSettings\out\classes.dex`（v19：51 类 / 527,132 B）。

## 校验

```powershell
java -cp "..\.tools\smali\baksmali-2.5.2.jar;tools\classes" Pseudo3DAnalyze report `
     out\classes.dex out\dex-report-v19-lateperf.txt <包目录>\classes*.dex
```

报告：`unresolved_refs=0`；`GameThread.updateMinimap` 9→2 条指令、`SaveGameManager.autosave` +1 条、
`MapBG.drawMinimapTexture_Generate/previewTexture_Generate` 各 +1/+2 条。

## 调参

| 常量 | 位置 | 默认 | 说明 |
|---|---|---|---|
| `MIN_MINIMAP_DAYS` | `LatePerf.java` | 7 | 小地图最低重建间隔；改大更省、改小更新更及时 |
| `SLOW_TICK_MS` | `LatePerf.java` | 150 | 超过该耗时的日结算才单独打日志 |
| `SUMMARY_EVERY` | `LatePerf.java` | 300 | 每 N 天输出一次 avg/max 汇总 |

改完重新跑 `build-dex.bat` 即可（Java 类走 `tools\build-java.ps1` 自动编译）。

## 回滚

把 `LateGamePerf\tools\apply-patch.ps1` 从 `merge.ps1` 第 12 段注释掉后重建即可，
或直接用旧版 `out\classes.dex`。

## 后续可做（本工程预留的扩展点）

1. **日结算分帧**：把 `Game.aiManager.updateAll()` 拆成 `aiTask` 队列，每游戏刻只跑一部分（行为需评估）；
2. **AI 军队调度降频**：`AI_MoveAtWar` 按国家轮转（与 `GV_GameUpdateAI` 叠加）；
3. **小地图按需重建**：只有小地图/地图模式界面可见时才重建（需要判断 UI 可见性，避免其它菜单读宽高时 NPE）；
4. **堆占用剖析**：结合 `lateperf` 慢日日志 + `hprof`，定位 300~450MB Java 堆的主体（省份/事件/任务）。
