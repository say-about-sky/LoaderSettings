# LoaderSettings —— 伪3D地图补丁(倾斜版 + 文字倾斜修补,独立 classes.dex)

> **简介**:给《Age of History 3》安卓整合包用的**补丁 dex 工程** —— 伪3D(倾斜)地图与文字倾斜修补,
> 并附带长按快捷操作(LPA)、小地图/行军线性能优化、剧本任务懒加载、兵牌语音、占领进度滤镜、
> UI API / Game API 等子项目。
>
> **快速开始**:① `build.bat`(或 `build-dex.bat`) → ② `out\classes.dex` → ③ 自行把该 dex 合并进 APK(置最前)、
> 重打包签名后冷启动生效(首次构建前按 `tools\env.ps1` / `tools\env.local.ps1` 配好 JDK 与 SDK)。
> **依赖**(不进版本库):JDK 11+、Android SDK(d8 / `android.jar`)、`loader-1.6.0.jar`、目标包反编译基线。
> **许可**:GPL-3.0,见 `LICENSE.TXT`。
> **隐私**:补丁本体不联网、不收集数据;仅 `WebUI` 子项目会创建系统 WebView,插件页面自身可发起网络请求。
>
> 各子项目与逐版本记录见下文。

> 本工程原名 `Pseudo3DMap`,v12e(2026-10-17)起更名为 **LoaderSettings**;
> 同时把 `LongPressMoveArmy`(Quick Actions 快捷操作)源码工程整体迁入本目录(`LoaderSettings\LongPressMoveArmy\`)。
> 旧目录 `Pseudo3DMap\` 与 `LongPressMoveArmy_bak\` 仅作备份保留,不再参与构建。
>
> **v13(2026-10-19)**:`build-dex.bat` 现在会先经 `tools\build-lpa-patch.ps1` 用 loader patch 模式
> 展开 LPA 的 Mixin,再由 `tools\merge.ps1` 把 LPA 的**增量方法与字段**移植进 final-smali;
> 产出的 `out\classes.dex` 同时包含伪3D倾斜与 Quick Actions,不再需要另外前置 LPA 补丁 dex。
>
> **v14(2026-10-19)**:修复“每天 24:00→第二天 00:00 地图闪回原版一帧”。
> 虚革包的 `GV_GameUpdate.json` 把 `GAME_UPDATE_MINIMAP` 设为 `1`,每回合都会重建小地图;
> `MapBG.drawMinimapTexture_Generate` 会 `camera.setToOrtho(...)` 重置相机并把 `oSB` 投影设成未倾斜版。
> 现在在该方法正常返回前调用 `Game.applyMapTiltToBatch(oSB)` 重新应用倾斜矩阵。
>
> **v18(2026-10-20)**:`MissionTree.loadMissions_Civs()` 也改为 Java(`MissionLazy.loadCivs()`),
> 逐国解析任务 JSON + 事件并保持原顺序(v34 起删掉了实测更慢的并行分支,只保留单线程),
> 运行时会输出 `[missionlazy] loadCivs ... ms=` 日志。
> 产物 `out\classes.dex` = 48 类 / 448,484 B / unresolved=0。
>
> **v19(2026-10-21)**:新增子工程 **`LateGamePerf\`**(游戏侧后期卡顿改造,第三个子工程):
> `GameThread.updateMinimap()` 改为转发 `LatePerf.updateMinimap()`(小地图最低 7 天重建一次,
> 即使配置 `GAME_UPDATE_MINIMAP=1` 也不会每天 `glReadPixels` 全图)+ 记录日结算起点;
> `SaveGameManager.autosave()` 入口调用 `LatePerf.onDayTickEnd()`(日结算 >150ms 打到 logcat `lateperf`);
> `MapBG` 4 处 `new Texture(Pixmap)` 后补 `Pixmap.dispose()`(native 直接缓冲不再泄漏/抖动)。
> 产物 `out\classes.dex` = 51 类 / 527,132 B / unresolved=0。
>
> **v20(2026-10-21)**:`LateGamePerf` 增加行军线优化:`MoveUnits.draw` / `draw_Ally` 每帧的
> `Array<Vector2>` + 逐点 `Vector2` 改为 `PathPool` 复用(每方法 7 处);
> `ProvinceDraw.drawMoveUnits_Just` 里**盟友/附庸**的两处绘制改走 `MoveCull` 视口剔除。
> 产物 `out\classes.dex` = 53 类 / 528,896 B / unresolved=0。
>
> **v20b(2026-10-21)**:修正 v20 的两个 bug —— ①玩家自己的行军线被一起剔除(现在 `draw()` 保持原版);
> ②屏幕坐标漏了 `mapBG.getWidth()` 导致几乎全剔。现在控制点与 `buildLine/draw_Ally` 同源,
> 包围盒外扩 `max(128px, 25%视口)`,`isBelowZero`/异常一律 fail-open。
> 产物 `out\classes.dex` = 53 类 / 529,532 B / unresolved=0(盟友剔除 2 处,玩家线 1 处保持原版)。
>
> **v21(2026-10-21)**:加“引导线子系统”耗时探针 —— `drawMoveUnits_Just` 入口/出口插
> `LatePerf.moveBegin/moveEnd`(统计含“所有国家行军单位 update + 盟友线绘制”的整段耗时),
> `MoveCull` 内分别累计剔除判定/真正绘制的微秒。状态日志新增 `allyUs=…/… lineFrame avg/max`。
> 产物 `out\classes.dex` = 53 类 / 530,432 B / unresolved=0。
> **(v34 已全部移除这些探针：插桩、计时字段、`bb` 自检；盟友线剔除本体保留。)**
>
> **v21b**:`MoveCull` 的逐条计时改为 **1/4 采样**(后期每帧 200~340 条盟友线，每条 2 次 `nanoTime`
> 约 30µs/帧 → 采样后 ≈ 8µs，统计值 ×4 还原，对数不变)。产物 53 类 / 530,480 B / unresolved=0。

以 **虚革 3.4.2 整合包** 的 dex 为基线,仅并入 **3dmap mod 的"伪3D倾斜"功能 + 地图文字随倾斜变形修补**后导出的独立补丁
`classes.dex`(前置进游戏即用;不依赖 HotPluginLoader —— 伪 3D 必须替换游戏类,只能走 dex 补丁)。

- 功能:地图放大时呈现类似钢铁雄心4的 3D 倾斜效果(游戏内「设置」可开关)。
- 适配基线:**原生 APK `<解包目录>\polaris`**(`classes2.dex` = 原版游戏,`classes.dex` = 已装的 HotPluginLoader 补丁);
  旧的整合包(虚革/暮色)基线已废弃 —— 见下文「目标包基线」。
- 来源:虚革TNO制作组《伪3d地图渲染插件》smali(原始材料 `..\3dmap\`;原始说明 `mod说明-原始.txt`)。
- 处理:作者 smali 混有若干"依赖其工作版、stock 包不存在"的夹带改动(实机已崩:
  `Province.isWastelandTerrain`),已逐项甄别 —— 全部回退/改名/移除;
  终版校验见 `out\dex-report-final.txt`(**未解析引用 = 0**)。

## 目录

```
LoaderSettings\
├─ LongPressMoveArmy\     ← Quick Actions 插件源码工程(从原独立目录迁入;构建/运行方式不变)
├─ MissionLazyLoad\       ← 剧本国家任务图/事件优化(Java 逻辑 + 3 个 smali 转发适配 + 消费点改写脚本)
├─ LateGamePerf\          ← 游戏侧后期卡顿改造(小地图节流 + Pixmap 释放 + 日结算耗时日志)
├─ ArmyVoice\             ← 兵牌点击语音优先级(转发 com.saysky.armyvoice.ArmyVoice)
├─ HotVarApi\             ← 热插件事件触发器桥(has_variable/_not/_civ → com.saysky.hotvar.HotVars)
├─ SiegeTint\             ← 占领进度滤镜 + 百分比/灰度(省色斜线蒙版替代原版堡垒图标+进度条;设置-地图页开关+原生滑块)
├─ GameApi\               ← 游戏运行时 API 子项目(控制台命令 / 触发 txt 事件 / 载入外部事件文件;纯 Java,不依赖 Web)
│   └─ samples\           ← 不用 WebView 的普通热插件调用示例(GameApiSample.java)
├─ UiApi\                 ← 标准化 UI 基类/自动布局 API 子项目(TextButtonSpec/IconButtonSpec/PageSpec/Pages/CustomPage/UiHost)
├─ UI-API.md              ← UI API 详细手册(内置页面锚点/布局语义)
├─ smali\                 ← 原作者 smali 21 类(参考,勿改)
├─ final-smali\           ← 合并产物(tools\merge.ps1 生成;build-dex.bat 的汇编源)
├─ patches\               ← 自定义补丁块(merge.ps1 注入/替换;含 CityIconHelper 中和版、省名/兵牌/横幅/攻城/攻城线/外交线/商船 倾斜)
├─ merge-work\pack-smali\ ← 目标包反汇编 baseline(tools\refresh-baseline.ps1 按类定义抽取;含 Battle/SiegeManager/MoveUnits_BiggestCities 家族/Ship2/Touch/ButtonTopOutliner/MapBG/CityIconHelper;final 前剔除 3 个仅参考类)
├─ merge-work\lpa-patch\ ← LPA patched smali(raw-smali 全量 / lpa-smali 仅保留需要的 11 类)
├─ tools\
│   ├─ build-lpa-patch.ps1 ← 用 loader patch 模式展开 LPA Mixin,生成 merge-work\lpa-patch\lpa-smali
│   ├─ merge.ps1          ← 合并脚本(以包 baseline 为底 + 保留清单 + 文字/线条倾斜补丁 + LPA 增量;幂等)
│   ├─ refresh-baseline.ps1 ← 从目标包 dex 重抽 merge-work\pack-smali(按 ClassDef 判定,备份旧基线)
│   ├─ verify-dex.ps1     ← 构建末尾自动:用 Pseudo3DAnalyze 对目标包 dex 校验 unresolved_refs=0
│   ├─ gen-tilt2-patches.ps1 ← v11 线条/商船补丁生成器(文本级插入+计数断言)
│   ├─ Pseudo3DAnalyze.java ← dexlib2 方法级对比/引用完整性工具
│   └─ classes\           ← 工具编译产物
├─ out\
│   ├─ classes.dex        ← ★ 产物:倾斜版 + Quick Actions + 任务图优化 + 后期卡顿改造补丁 dex(548,116B,64 类;v8 兵牌 / 战斗横幅 / 攻城图标 / v11 线条·商船 / v12 设置-地图页(Java)/ v14 小地图重建投影修复 / v15 低名称地标缩小 / v18 MissionLazy(Java,单线程)/ v19 LateGamePerf(小地图节流+Pixmap 释放+日结算耗时)/ v20 行军线池化+盟友线视口剔除 / v22+ SiegeTint 占领滤镜+百分比 / v34 旧探针与冗余桩清理)
│   ├─ classes_original_mod.dex ← 作者原始 dex(未处理、含缺失依赖,勿用)
│   ├─ dex-report.txt     ← 原始对比报告(作者版 vs 包)
│   ├─ dex-report-tilt3.txt ← 文字倾斜版校验报告(unresolved=0)
│   ├─ dex-report-final.txt ← 纯倾斜版校验报告(unresolved=0)
│   ├─ dex-report-tilt12.txt ← v11 全量校验报告(27 类 / unresolved=0)
│   └─ dex-report-v12.txt ← v12 校验报告(30 类 / unresolved=0)
│   └─ dex-report-v12b.txt ← v12b 校验报告(31 类 / unresolved=0)
│   └─ dex-report-v12e.txt ← v12e 校验报告(31 类 / unresolved=0)
│   └─ dex-report-v13-lpa.txt ← v13 校验报告(41 类 / unresolved=0,含 Quick Actions)
│   └─ dex-report-v14-minimap.txt ← v14 校验报告(42 类 / unresolved=0,含 MapBG 小地图投影修复)
│   └─ dex-report-v15-nameslow.txt ← v15 校验报告(42 类 / unresolved=0,含低名称地标缩放)
│   └─ dex-report-v16-missionlazy.txt ← v16 校验报告(45 类 / unresolved=0,smali 版 MissionLazyLoad)
│   └─ dex-report-v17-java.txt ← v17 校验报告(46 类 / unresolved=0,MissionLazy 改为 Java 实现)
│   └─ dex-report-v18-parallel.txt ← v18 校验报告(48 类 / unresolved=0,含 loadCivs)
│   └─ dex-report-v19-lateperf.txt ← v19 校验报告(51 类 / unresolved=0,含 LateGamePerf)
│   └─ dex-report-v20-lateperf2.txt ← v20 校验报告(53 类 / unresolved=0,含行军线池化+剔除)
│   └─ dex-report-v20b-lateperf3.txt ← v20b 校验报告(53 类 / 529,204 B,只剔盟友线)
│   └─ dex-report-v20c-lateperf4.txt ← v20c 校验报告(53 类 / 529,532 B,含 bb 诊断)
│   └─ dex-report-v21-lateperf5.txt ← v21 校验报告(53 类 / 530,432 B,含引导线子系统耗时探针)
│   └─ dex-report-v21b-lateperf6.txt ← v21b 校验报告(53 类 / 530,480 B,计时改为 1/4 采样)
├─ build-dex.bat          ← 自动重建 final-smali 并汇编 → out\classes.dex
└─ assets\                ← 图标图片(已不安装,仅留档)
```

**插件编译用 API（compileOnly）**：`out\ui-api.jar` = `com/saysky/ui/api/*` + `com/saysky/ui/UiHost` + `com/saysky/game/GameApi`。
两步都只引用宿主 dex 里的实现，**不要把 jar 内容打进插件包**。

```java
// UI：派生基类 + 让宿主自动布局
UiHost.addButton(ctx.id(), new TextButtonSpec() { ... });
// 运行时：控制台 / 事件（与 Web 无关，任何热插件都能用）
GameApi.console("gold 100");
GameApi.loadEventFile(new File(ctx.dataDir(), "event/event_demo.txt"));
GameApi.event("event_demo.1");
```

依赖:`.tools\smali\smali-2.5.2.jar`(汇编)+ `baksmali-2.5.2.jar`(反汇编)。

## 构建(可复现)

> **一键:`build.bat`(或 `build.ps1`)** —— 自动解析 JDK/SDK/游戏根,检查基线(baseline)后跑 `tools\merge.ps1`(含 LPA 合并),
> 无需手动执行前置步骤;基线缺失时用 `build.ps1 -RefreshBaseline -PackageDir <解包目录>` 从目标 APK 重抽。

1. `tools\build-lpa-patch.ps1` —— 用 `loader-1.6.0.jar --launch-mode patch` 展开
   `LongPressMoveArmy` 的 Mixin,反汇编后输出 `merge-work\lpa-patch\lpa-smali\`
   (仅保留 Touch / MapTouchManager / ButtonTopOutliner 与 Quick Actions 支持类);
   源码比 jar 新时会自动 `gradlew shadowJar`,也可加 `-BuildJar` 强制重建。
2. `tools\merge.ps1` —— 重建 `final-smali\`(包 baseline + 保留清单 + 倾斜补丁 + LPA 增量;可反复执行);
   若 `lpa-smali` 不存在会自动调用上一步。
3. `build-dex.bat` —— ① 自动跑 `merge.ps1`;② smali 汇编 → `out\classes_smali.dex`;
   ③ `tools\build-java.ps1` 编译 `java\src\` 并用 D8 与 smali dex 合并 → `out\classes.dex`;
   ④ `tools\verify-dex.ps1` 对目标包 dex 校验 `unresolved_refs=0`(非 0 直接失败)。

> **工具链路径(不进版本库)**:JDK / Android SDK / 游戏根由 `tools\env.ps1` 解析 ——
> 优先环境变量 `JAVA_HOME`、`ANDROID_HOME`(或 `ANDROID_SDK_ROOT`)、`AOH_GAME_ROOT`,
> 其次 `tools\env.local.ps1`(自行创建,**已在 `.gitignore` 中**,可设 `$AohJdkBin` / `$AohSdk` / `$AohGameRoot`),
> 最后自动探测(游戏根=本工程上一级;JDK=`C:\Program Files\...\jdk-*`;SDK=`%LOCALAPPDATA%\Android\Sdk`)。
> 各 `apply-patch.ps1` / `refresh-baseline.ps1` / `verify-dex.ps1` 的 `-JavaExe` 缺省同样走 `JAVA_HOME` 或自动探测。

## 目标包基线(必读)

补丁里的游戏类(如 `InGame_Console`)必须来自**你实际要装进去的那个 APK**;混用别的整合包的类会带上
对方独有的引用 —— 已发生的崩溃:`ConsoleEventInvoker` 只在整合包里,原生 APK 没有 → `NoClassDefFoundError`,
一按控制台就崩。

- 默认目标包 = `<游戏根上级>\polaris`(可用 `AOH_PACKAGE_DIR` 覆盖;存在 `classes2.dex` 时自动选用)。
- 指定别的包:`set AOH_PACKAGE_DIR=<解包目录>`(PowerShell:`$env:AOH_PACKAGE_DIR=...`);
  `merge.ps1` 与全部 6 个子补丁的 `apply-patch.ps1` 都认这个变量。
- 换包后**必须重抽基线**:
  `powershell -ExecutionPolicy Bypass -File tools\refresh-baseline.ps1 -PackageDir <解包目录>`
  (自动备份 `merge-work\pack-smali.bak-<时间戳>`;包里不存在的类保持原样,例如 mod 新增的 `CityIconHelper`)。
  也可 `set AOH_REFRESH_BASELINE=1`,让 `merge.ps1` 每次构建前自动重抽。
- 判定"类在哪个 dex"必须用 `baksmali list classes`(真正的 ClassDef);只搜描述符字符串会误判,
  因为**被引用**的类名也在常量池里。
- `WebConsole` / `HotVars` 都改成**头部注入 + fall-through**（见下节“通用接线原则”）：
  注入的指令只引用我们自己的类，原版方法体原样执行，即使目标包缺可选类也不会崩。
- 可选子补丁找不到目标类时**跳过**（例:`ArmyVoice` 需要包内自带 `ArmyClickSoundManager`）；
  `HotVarApi`/`MissionLazyLoad`/`LateGamePerf`/`SiegeTint`/`WebUI` 的目标类缺失则仍然是硬错误。

### 通用接线原则（新增 hook 请照此做）

1. **逻辑全在自己的包里**：`com.saysky.*` 只用反射/稳定 API 访问游戏，绝不直接引用“某个整合包才有”的类。
2. **只注入、不搬类体**：往目标方法头部插 2~10 条指令，由我们的方法返回“是否接管”；
   不接管就**落空**继续跑原逻辑。用 `tools\smali-hook.ps1`：

   ```powershell
   . (Join-Path $proj "tools\smali-hook.ps1")
   $body = @(
       '    invoke-static {p0}, Lcom/saysky/xxx/Hook;->handle(Ljava/lang/String;)Z',
       '    move-result v{0}',
       '    if-eqz v{0}, {L}',
       '    return-void',
       '{L}'
   )
   [void](Add-HeadHook -File $smali -Sig "execute(Ljava/lang/String;)V" `
                        -Marker "Lcom/saysky/xxx/Hook;->handle" -Body $body)
   ```

   它会自动 +1 个局部寄存器并把 `.registers`/`.locals` 改大（`{0}`/`{1}`=临时寄存器，`{L}`=提前退出标签），
   已注入过则跳过（幂等）。
3. **不要**再把原方法改名成 `*_Vanilla` 再转发：那会把整个方法体和它引用到的包内类一起拖进补丁，
   跨包时就变成 `NoClassDefFoundError`。
4. 必须是“接管与否”三态的 API（如 `Boolean eval(...)` 返回 `null` = 不接管），不要用会吞掉原版行为的布尔。

### LongPressMoveArmy 合并方式(v13)

- **不整类替换**:loader patch 输出的完整类基于 PC `game.jar`,与安卓整合包在 R8 优化/个别方法上可能不同;
  因此 `merge.ps1` 只把 LPA 的**新增字段/方法**与 **Mixin 修改的三个方法**移植到包 baseline 类上,
  其余方法(如 `MapTouchManager.actionUpSelectMode`)保留包内原样。
- Touch:`+ qa$actionUp`,`~ actionDown / actionMove(III) / actionUp`;
- MapTouchManager:`+ scrollMethod / lpm$actionDown / lpm$actionUp / lpm$drawSelectMode`,
  `~ actionDown / actionUp / drawSelectMode`;伪3D的 `actionMoveMap` / `updateStartMovePosXY` 不受影响;
- ButtonTopOutliner:`+ HOVER_TEXT / drawQuickActionsHighlight / hoverRow / qa$drawText / qa$buildElementHover`,
  `~ drawText / buildElementHover`;
- **不包含** `mixin/*` 与 loader 生成的 `PluginsCollection`(Mixin 已在构建期展开,`PluginsCollection` 会与宿主 loader 的同名类冲突)。

### Java 补丁管线(新增,推荐后续功能用 Java 写)

- `java\stubs\` —— **仅编译用**的游戏类桩(CFG/Game/ButtonGame2/Menu/MissionTree… 同包同名、只声明用到的成员,**不进 dex**);
- `java\src\` —— 真正打进 dex 的补丁类(`Settings_MapUI/MapOpen/MapBack/MapOption`、`com.saysky.missionopt.MissionLazy`);
- `tools\build-java.ps1` —— javac(`--release 8`,先 stubs 后 src)→ jar → D8
  `--lib android.jar --lib stubs.jar` 与 smali dex 合并出单 dex;
- 约束:stub 的类/方法签名必须与包内真实类一致(运行时按真实类解析);新增类勿与包内类重名。
- **维护约定**:新功能优先写成 `java\src` 里的新类;
  Java 管线只能**新增类**,因此「改包内既有方法」才写 smali,且尽量只写
  `invoke-static ... NewClass->method(...)` + `return` 的转发适配(参考 `MissionLazyLoad\patches\`)。

> baseline 重出:`baksmali disassemble <包目录>\classes.dex -o merge-work\pack-smali --classes "Laoc/.../Game;,Laoc/...;"`(注意是**描述符格式**,逗号分隔)。
> **v13 起 baseline 必须包含** `Laoc/kingdoms/lukasz/jakowski/Touch;` 与 `Laoc/kingdoms/lukasz/menu_element/button/ButtonTopOutliner;`(LPA 增量移植的目标类);
> **v14 起还必须包含** `Laoc/kingdoms/lukasz/map/map/MapBG;`(小地图重建投影修复),否则 `merge.ps1` 会报“缺少目标类”。

## 安装(手动)

本工程**只负责产出** `out\classes.dex`,不提供自动合并/部署脚本。

**PC(解包目录 + 已有管线):**

```powershell
.\merge-dex.ps1 -Folder "<解包目录>" -PatchDex "<游戏根>\LoaderSettings\out\classes.dex"
```

然后重打包 + 签名(如 `.tools\apkpack` 或 MT管理器)。

**手机(MT管理器):**

1. 把 `out\classes.dex` 导入 APK,命名 **`classes.dex`**;
2. 原有 dex 从大到小顺移(补丁必须最前,同名类先到先得);
3. 退出时勾选自动签名。(**无需**动任何 assets 资源)

> ⚠ **先恢复到原始包再合并**:本 dex 已包含 `Touch` / `MapTouchManager` / `ButtonTopOutliner`,不要再前置旧的 LPA 补丁 dex,
> 也不要同时启用 HotPluginLoader 里的 `LongPressMoveArmy` 插件(运行时 Mixin 会与这里的类替换重复注入)。
> 合并前最好从 `*_dexbak_*` 备份取回原始 dex,避免叠加多个补丁 dex。
>
> **启用方式**:LPA 所有功能默认关闭。进入游戏后按住右上角那个快捷按钮 **1 秒**,
> 弹出「修改快捷方式」面板 → 勾选「启用快捷操作」(需要快速国策时再勾「启用快速国策」)。

## 文字倾斜修补(省名随地图变形,v3 内联版)

原作者只给**图标/军队**做了倾斜位置换算,**省份名从未处理**(位置+字形都不变)→ 倾斜后文字"悬浮"。

修补:把 mod 自己的变换公式**完整内联**进 `ProvinceNamesManager.drawProvName` / `drawProvName_Medium`
(与 mod 的 `City.getDrawPosX/Y` 逐指令同构,已被实机证明可用):

```
k_s = getTiltK() × currentScale      (MAP_TILT 关时 getTiltK()=0 → 公式自然退化为恒等)
D   = 1 + k_s − k_s·Y/H              (H = CFG.GAME_HEIGHT)
screenY = Y/D
screenX = (X − W/2)·(1+k_s)/D + W/2
字形压缩因子(该变换的雅可比):scaleX = (1+k_s)/D,scaleY = (1+k_s)/D²
```

- 逐字符:位置过上述公式 + `setScale(fontScale×因子X, fontScale×因子Y)`。
- 城市名字形压缩**已回退**(`City.drawCityName` 用回包内原版,仅保留 mod 已有的位置修正)。
- 不新增 helper 方法,减少验证器/加载顺序风险。

已知未覆盖:文明大字名(`CivilizationRegion`)、首府名变体(`drawCityName_Capital*`)、
`FBO_PROVINCE_NAMES` 开启时省名走缓存(默认关)。
覆盖审计(v11):文明区域大字、首府名变体经源码核验**走世界相机通道自动倾斜**(无需补丁);
仍未覆盖(小项):点击金色波纹(`AnimationManager.drawScaled`)、征兵地图模式进度条、
商船点击命中(`Touch`)、编辑器专用 `ShipLine/WavesLine`。
调参=改 `patches\ProvinceNamesManager.*.smali` 里的系数。

## 每日小地图重建导致的“闪回原版”(v14)

现象:每到 **24:00 → 00:00**(回合/日期切换),地图会有一帧变回未倾斜的原版,随后恢复。

原因(源码核验):

1. 虚革包 `assets\game\gameValues\GV_GameUpdate.json` 里 **`GAME_UPDATE_MINIMAP: 1`**;
2. `GameThread.run()` 每次 `HOUR >= 24` 都会调用 `updateMinimap()` → `Game.mapBG.requestToDisposeMinimap = true`;
3. 下一帧 `Map.drawMap()` 先调用 `MapBG.drawMinimapTexture_Generate()`;
4. 该方法在 `finally` 里用 `Renderer.camera.setToOrtho(true, GAME_WIDTH/scale, -GAME_HEIGHT/scale)`
   重置相机,并 `oSB.setProjectionMatrix(Renderer.camera.combined)` —— 这是**未倾斜**矩阵;
5. 同一帧后续 `MapBG.drawMap` / `RendererGame.drawCurrentScale_Provinces` 就用这个未倾斜投影绘制 → 闪一帧。

修复:

- 新增 `Game.applyMapTiltToBatch(SpriteBatch)`(与 `renderer_SetToCurrentScale` 内联的矩阵运算逐指令同构);
- 在 `MapBG.drawMinimapTexture_Generate` 的**正常返回路径**(`goto/16 :goto_428` 之前)
  插入 `invoke-static {v8}, Game->applyMapTiltToBatch(SpriteBatch)V`
  (`v8` 是该方法的 `oSB` 局部引用;方法 `.registers 25`,不能直接写 `{p1}`,否则 4-bit 寄存器非法);
- 这样小地图仍是平面图(生成时未倾斜),但生成结束后立即把相机/批次投影恢复为倾斜版。

> 注意:`GAME_UPDATE_MINIMAP` 是整合包资源,不在 dex 补丁内;本修复不依赖修改该 JSON。

## “省份名称=低”的黑色地标缩小(v15)

- “省份名称: 低”走 `MapCities.drawCities_InGame_NamesLow` → `Province.drawCities_InGame_NamesLow_OnlyName`
  → `City.drawCity_InGame_NamesLow_OnlyName`;
- 地标图标缩放来自 `CityIconHelper.getScaleForCity()`。在 `move-result v2` 后插入:

```smali
const/high16 v4, 0x3f000000    # 0.5f
mul-float/2addr v2, v4
```

- 效果:低名称模式下的黑色地标缩小为原来的一半;名称位置随图标缩放同步靠拢。
  只影响 NamesLow 路径,不影响其它名称样式。
- 注:低名称模式下的黑色首都旗帜(`assets/ui/army/flagCapitalOver*.png`)已在前一版按 50% 缩放;
  本节改的是城市地标图标(`CityIconHelper`),两者互不影响。

## 设置(可选)

- **游戏内「设置」→ 画面 →「地图」条(v12 新增,位于 UI比例 下方,行文字固定为「地图」)**:点击进入子页,三选项 ——
  **原版地图 / 伪3D地图(默认) / 关闭地图**;选择后仅**保存设置**(`settings/Settings.txt`,
  `SettingsManager.MAP_MODE` = 0/1/2),**重启游戏后生效**(运行时开关由 `Game.loadSettings()` 按 MAP_MODE 计算;选项页会提示「重启游戏生效」)。
  **选中态显示同原版「UI比例」**:三个选项都用 `ButtonGame2` 的 checkbox 染色,当前模式为绿色、其余为红色。
  该子页**不显示** `Settings_Menu.draw` 里的渲染计时调试面板(开关在 `game\gameValues\GameValues.json` 的
  `SETTINGS_MENU_DRAW_TIMES`;UI比例等独立子页天生没有面板)。双保险:①`Settings_Menu.draw` 开头 `MAP_PAGE` 门控;
  ②`Settings_MapUI.build()` 把 `GameValues.value.SETTINGS_MENU_DRAW_TIMES` 暂存并置 false,返回时由
  `Settings_MapBack/MapOption` 调 `restoreDebugPanel()` 还原。
  实现:同一视图内页切换(Settings_Menu 重建 + 静态 MAP_PAGE 标志),未改动 MenuManager/View;
  **界面代码用 Java 编写**(见上「Java 补丁管线」):`Settings_MapOpen/MapBack/MapOption` 按钮与
  `Settings_MapUI.build()` 页布局;smali 侧仅保留 `initMapPage()` 薄垫片(调 Java build 后 initMenu)。
- 「关闭地图」= 在 `Renderer.render()` 入口短路全部原版地图渲染 pass(clearScreen 之后直接
  resetScale + renderUI + end×2 + return),保留全部 UI —— 供 HotG3DMapTest 接管地图渲染。
  注意:需要地图做背景的位置(如主菜单背景)也会一并变黑。
- 旧的 `MAP_TILT` 开关行已由「地图」页替代;`SettingsManager.MAP_TILT` 字段仅保留兼容。


## 回退/剔除清单(相对作者原始 smali)

**崩溃根因修复(stock 包缺依赖,原版必崩):**

- `Game.getProvinceTaxEfficiency` —— 调用包内不存在的 `Province.isWastelandTerrain`
  (真机在开局 `buildProvincesCapital` 阶段崩溃,堆栈已确认);
- `Game.loadAlliancesSpecial_Images`(`Alliance.reloadAllFlagImages` 不存在);
- `Renderer.drawLoading`(`team/rainfall/loading/LoadingQuoteRenderer` 不存在);
- `MoveUnits` 的 `canBeUsedInPath/buildPath/buildRoute/buildRoute2` + 字段 `s_allowHarshInPath`
  (`Province.getWastelandForMilitary/isHarshTerrain/isMilitaryRestrictedTerrain` 不存在);
- `MapCities.getProvinceCityTitle`(`team/rainfall/citylow/CityLowConfig` 不存在)。

**功能移除(按需求):** 地名图标 —— 最初尝试整体弃用 `CityIconHelper`,**但实测证明它不可删**
(它是**载荷类**:包自身 City/MapCities/Province 与并入的 mod 方法都引用它;缺失 →
`NoClassDefFoundError` 逐帧被吞 → **名称/城市渲染静默失效("地块名不显示")**;
切"省份名称=低"时会在未吞路径爆出崩溃框)。现方案:`patches\CityIconHelper.smali` =
**mod 版**(`icons` 公共字段供并入方法读取、扩展图标集 safe-load)+ 唯一不相容点
`CityLowConfig.getLevel` **中和为包版逻辑**(getIconIndex 直走包内 growth-rate 分支)。
图标相关资源仍不主动安装(扩展套缺失会被安全跳过)。

**甄别保留/改名:**

- `Game.getSupremeCourt_Corruption` 被作者改成倾斜换算辅助函数 → 已**改名**为
  `getTiltMouseMapPos`(X/Y 由参数选择);**原版函数完整保留**(包内其余调用不受影响);
- `Settings_Menu.draw` 的小修正保留(服务于新增的 MapTilt 设置行);
- `ProvinceDraw.drawProvincesBorder_Prepare` 的 JoinType 追加、`RendererGame$8` 纯 nop 垫片 → 回退为包版。

## 校验与兼容性

- **v15(低名称地标缩小)** = 42 类;`unresolved_refs=0`,报告见 `out\dex-report-v15-nameslow.txt`;
  `out\classes.dex` 约 415,860 B;`City.drawCity_InGame_NamesLow_OnlyName` 72 → 84 指令(含 0.5f 乘法)。
- **v14(每日小地图修复)** = 42 类;`unresolved_refs=0`,报告见 `out\dex-report-v14-minimap.txt`;
  `out\classes.dex` 约 415,856 B;`MapBG` 仅 `drawMinimapTexture_Generate` +1 条 invoke(605 → 606 指令)。
- **v13(LPA 合并)** = 41 类;`unresolved_refs=0`(传入包全部 6 个 dex 校验),报告见 `out\dex-report-v13-lpa.txt`;
  `out\classes.dex` 约 390,920 B;包含伪3D倾斜 + Quick Actions(长按移动/框选/快速国策/设置面板)。
- 终版(v12b)= 包 baseline + 53 个替换方法 + 7 个新增方法 + 5 个字段 + 31 类;`unresolved_refs=0`(传入包全部 6 个 dex 校验)、D8 预检通过;
- **移动兵牌位置修正(v8)**:`ProvinceDrawArmy.getArmyPosX/Y`(mod 版)把行进偏移(iShift*_Scaled[iShift)直接加在倾斜后的基点上 → 行军时兵牌浮空、到站才吻合。现改为**先在原始空间合成 基点+偏移,再整体倾斜**(`patches\ProvinceDrawArmy.getArmyPosX/Y.smali`);Shadow 版不含偏移、不变。
- **战斗横幅倾斜(v10)**:原 mod 未处理 `Battle.getArmyPosX/Y` → 开战时「进攻|⚔|防守」横幅停留在**未倾斜**位置(与倾斜后的地块/兵牌错位,兵模插件锚定横幅也随之偏移)。
  现同法修正:`patches\Battle.getArmyPosX/Y.smali` = 包版返回值(含 armyH 常量偏移)整体做一次倾斜变换;
  `Battle.smali` 全类已加入 pack-smali baseline(RefFind 核实:全包仅 `Battle.drawBattle_Just` 自身调用这两个方法,影响面最小)。
  注意:兵模插件(HotG3DArmyPseudo3DMapVersion)的战斗表现仍锚定 `bt.posX/posY`(即横幅)——本补丁后横幅倾斜,兵模自动跟随。
- **攻城图标修正**:`SiegeManager.getArmyPosX/Y` 同法内联倾斜(drawSiege 全部元素 + Touch 命中判定共用)。
- **攻城线/大城线/外交线/商船修正(v11)**:审计发现 mod 只做完了「世界相机通道」的自动倾斜,**像素通道**的这几类从未处理:
  ①`MoveUnits_BiggestCities.draw`(攻城线+大城线,nPath 逐点 warp);②`MoveUnits_BiggestCities_Diplomacy.draw2`(外交线+端点圆,4 处 warp);
  ③`Ship2.draw`(缩放≥1 的商船图标,warp 后加 rotate 偏移)。完整包反汇编已加入 baseline,方法级补丁在 `patches\`。
- **覆盖审计结论(2026-10-16)**:省填色/边界/文明区域大字/首府名/云/动画等走「世界相机」(投影矩阵已含倾斜)→ 自动正确;
  「像素通道」已修:城市图标/省名/低样式/兵牌/移动路径/圆点/nuke/攻城图标/攻城线/外交线/商船。未修小项见上节。
- 工具:`tools\RefFind.java`(引用定位:扫描 dex 找出引用了目标成员的所有类/方法;定位跨类数据流用)。
- D8 预检通过;与包逐方法对比见 `out\dex-report-tilt9.txt`;mod 完整差异核对见 `out\dex-report-modfull.txt`。
- **已并入的全部 mod 视觉方法**:37 基础 + **NamesLow 家族 4 个**(City.drawCity_InGame_NamesLow / drawCity_InGame_NamesLow_OnlyName / MapCities.drawCities_InGame_NamesLow / drawCities_Just_InGame_NamesLow —— 修复"低"样式图标/文字不锁定);
  故意排除项 = 寻路(MoveUnits 4 个,缺 Province 荒芜地形方法)、加载动画(LoadingQuoteRenderer)、旗帜重载、税收效率、地块边框 JoinType —— 均与 3D 视觉无关。
- ⚠ 汇编器/D8 **不做类型验证**,只有真机冷加载的 ART 验证器会拒(VerifyError):
  改写**实例方法**时 p0=this(首个参数在 p1);大 `.registers` 方法里 p4/p5 不能直接参与 float 运算(先 `move/from16`);
  catch 处理器的 `move-exception` 须选全 try 区间恒为引用的寄存器。以上均已规避。
- `HOURS_PER_TURN:I` 显示 null→0 为 smali 汇编器往返的存储痕迹(静态 int 默认 0,运行等价),可忽略。
- 与其它补丁改同一类时(LPA 的 `MapTouchManager` 等)合并顺序决定谁生效,不能共存 —— 需源码级合并。
- 类替换**冷启动生效**;重复合并前先还原(`merge-dex.ps1` 备份在 `*_dexbak_*` 目录)。

## 14. ArmyVoice:兵牌点击语音优先级(子项目 `ArmyVoice\`)

整合包自带的 `ArmyClickSoundManager`(只在安卓整合包 dex,PC `game.jar` 没有该类)负责「点兵牌播放语音」。
新增子项目把它改为转发到 Java 类 `com.saysky.armyvoice.ArmyVoice`,并加入三级新回退:

`army_click/<civTag>` > `army_religions/<宗教>` > `army_culture/<文化组>` > `army_default` > 原版 `playSelectedArmy`

- 目录:`assets/audio/sfx/army_click|army_religions|army_culture|army_default/<key>/0.ogg..9.ogg`
  (从 0 连续编号、遇缺即停;每目录上限 10;大小写自动回退;宗教/文化名非 ASCII 时改用数字索引目录)
- 构建:`tools\merge.ps1` 第 13 段调用 `ArmyVoice\tools\apply-patch.ps1`(从目标包 dex baksmali 出类并替换方法体,幂等)
- 资源:`ArmyVoice\tools\import-hoi4-voices.ps1`(HOI4 `dlc\*\sound\<tag>` 将军语音 idle/neutral/positive/retreat → ffmpeg OGG,按国家/宗教/文化组生成)
- 热更新(仅「全部重载」):音频可放 `hotplugins/resources/<附加包名>/override/audio/sfx/army_*`;`ColdBootstrap.rescanResources()` 反射调 `ArmyVoice.invalidate()` 递增资源代际,下一次点击某国时只重扫该目录。平时 `playForCiv` 仅多一次 volatile 读,零帧开销;重建预算 `MAX_RELOADS=32`
- 详细说明见 `ArmyVoice\README.md`

## 15. HotVarApi:给热插件用的「事件触发器」桥(子项目 `HotVarApi\`)

热插件不能改游戏类,原来只能把自己想为真的字符串写进文明 `eventsDataVariables`(变量镜像),
导致 `has_variable=xxx:support:党:gt:0.5` 的**阈值必须提前声明**、且无法按国家实时求值。
本子项目改掉 3 个触发器方法,让它们**先问热插件**,没人认领再回退原版:

```
EventTrigger_HasVariable.outCondition(II)Z
EventTrigger_HasVariableNot.outCondition(II)Z
EventTrigger_HasVariableCiv.outCondition(II)Z
    -> com.saysky.hotvar.HotVars.has(int civID, String var) / hasCivTag(String, String)
```

- 热插件零编译依赖:反射 `Class.forName("com.saysky.hotvar.HotVars").getMethod("register", String.class, Object.class)`,
  传一个带 `boolean test(String var, int civID)` 的对象即可(长前缀优先,命中即返回)。
- 无插件注册时:一次 volatile 读 + 长度判断(≈0),行为与原版逐字节一致;插件抛异常自动回退原版。
- 只桥接触发器;**效果 `add_variable=...` 不需要桥接**(本来就是写变量表,热插件轮询执行)。
- 构建:`tools\merge.ps1` 第 14 段调用 `HotVarApi\tools\apply-patch.ps1`(这 3 个类不在 `pack-smali`/`final-smali`,
  运行时从目标包 dex baksmali 抽出后整方法替换,幂等);Java 侧 `java\src\com\saysky\hotvar\HotVars.java` 自动编译进补丁 dex。
- 首个使用者:`ZPartyHot`(启动时注册 `zparty:` / `zanparty:` 前缀,支持
  `ruling:<党>` 与 `support:<党>:<gt|ge|lt|le|eq|ne>:<0..1>`)。
- 详细说明见 `HotVarApi\README.md`

## 16. SiegeTint:占领进度滤镜(子项目 `SiegeTint\`)

原版围攻在省份中心画「堡垒图标 + 蓝色进度条」,在伪 3D 地图与 3D 兵模下观感差。
本子项目改为**省份图层滤镜**:颜色 = 即将占领该省的文明色(`Civilization.getColor`,与占领完成后的省图层同源),
透明度 = `siegeProgress`(0→1)逐渐加深,并带**斜线蒙版**(运行时生成,走 `Renderer.shaderAlpha_Pattern`),
以便与「已占领」的原版平铺色块区分;省中心另绘 `<数字>%` 百分比标签(与滤镜同在地图通道,随缩放/伪3D 倾斜贴地,无底框靠阴影可读)。

- 绘制点:`ProvinceDraw.drawOccupiedProvinces` 末尾(省填色之后、部队/城市之前),随地图相机自动套用伪 3D 倾斜。
- 回收:完全由 `SiegeManager.lProvinces` + `ProvinceData4.isUnderSiege()` 每帧实时驱动,围攻结束/取消当帧消失,无残留图层。
- 大量围攻优化:单次遍历同时出滤镜+标签;字号量化 5 档、每档 101 个 `GlyphLayout` 预生成,所有标签(阴影+主文字)塞进同一个 `BitmapFontCache` 一次提交(不再是逐省 `Renderer.drawText`);文明色按省 ID 缓存(进度变/20 帧 TTL 重算);屏幕高度 <9px 的省不画数字,上限 192 个。滤镜仍逐省 `flush()`(uniform `u_maskScale` 必须按省设)。
- 关闭开关:完全回到原版图标 + 进度条(原方法体保留为 `SiegeManager.drawSiege_Vanilla`)。
- 设置开关:设置 → 地图 子页原生标题栏「占领显示」下:`占领进度显示`(`SIEGE_TINT`)/`启用百分比显示`(`SIEGE_PERCENT`)/`数字明暗`原生滑块(`SIEGE_PERCENT_GRAY`, -1..+1;0=按滤镜色自动拉对比,负=压暗、正=提亮),均随 `settings/Settings.txt` 持久化,即时生效。
- 构建:`tools\merge.ps1` 第 15 段调用 `SiegeTint\tools\apply-patch.ps1`(三处幂等改动);Java 侧 `java\src\com\saysky\siegetint\SiegeTint.java` 自动编译进补丁 dex。
- 详细说明见 `SiegeTint\README.md`