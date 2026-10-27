# MissionLazyLoad —— 剧本国家任务图「按需解码」补丁（LoaderSettings 子工程）

> 目的：消除剧本加载 `Loading Scenario #64` 的单步长卡顿。
> 该步骤执行 `MissionTree.loadMissions_Civs()`，原版会把**所有国家**的任务图一次性
> `ImageManager.loadTexture()` 解码成 GPU 纹理。暮色黄昏 TheGreatWar 剧本里有
> 51 个国家任务 JSON、4.1k 张任务图（去重后 2k+ 张、解码后约 92 MB RGBA），
> 全部压在一步里 → 手机上数分钟停顿。
>
> **维护约定：业务逻辑一律写 Java**（`LoaderSettings\java\src\`），
> smali 只保留「一行转发」的最小适配块。

## 组成

| 层 | 位置 | 说明 |
|---|---|---|
| 逻辑（Java） | `LoaderSettings\java\src\com\saysky\missionopt\MissionLazy.java` | `indexCiv(int)` / `get(int)` / `disposeCivs()` / `resolvePath(String)` |
| 编译桩 | `LoaderSettings\java\stubs\...` | `MissionTree` / `Mission` / `Civilization` / `Map` / `FileManager` / `EventsManager`，以及 libGDX 的 `Texture`、`FileHandle`；**仅参与 javac/D8 编译，不进 dex** |
| smali 适配 | `MissionLazyLoad\patches\*.smali` | `MissionTree` 两个方法改成 `invoke-static ... MissionLazy->...` + `return`（各 2 条指令） |
| 消费端改写 | `MissionLazyLoad\tools\apply-patch.ps1` | 把 `missionImagesCivs.get(id)` 机械替换为 `MissionLazy.get(id)`，并校验无遗留 |

为什么仍要动 smali：Java 补丁管线只能**新增类**，不能修改包内既有类；
`MissionTree.loadMissionsImagesCiv` / `disposeMissionImagesCivs` 与消费点必须换调用，因此保留最小适配。

## 补丁点

1. **`MissionTree.loadMissionsImagesCiv(I)`** → `MissionLazy.indexCiv(civID)`
   只建 `missionImagesNamesCivs` 与 `Mission.ImageID` 的索引，零 IO、零解码。
2. **`MissionTree.disposeMissionImagesCivs()`** → `MissionLazy.disposeCivs()`
   切剧本时释放已解码纹理，容纳 `missionImagesCivs` 里的 null 占位。
3. **消费点** → `MissionLazy.get(imageID)`
   首次绘制时按原版四级路径回落解码并缓存：
   `<scenario>/missionsImages/{Short,H}/name` → `game/missions/missionsImages/{Short,H}/name`。
   - `ButtonMissionTreeCiv.drawButtonBG`
   - `team/rainfall/rfEvent/utils/MissionUtil.getMissionImage(...)`（RainfallEvent 关注点 UI 真实调用）
4. **`MissionTree.loadMissions_Civs()`** → `MissionLazy.loadCivs()`
   Java 版逐国解析任务 JSON + 事件（保持原顺序），再倒序建图片索引。
   并行开关：`MissionLazy.PARALLEL_THREADS`（默认 **1**）；实测 4 线程反而更慢（见下）。

## 目录

```
MissionLazyLoad\
├─ patches\
│  ├─ MissionTree__loadMissionsImagesCiv.smali      ← 2 条指令的转发适配
│  └─ MissionTree__disposeMissionImagesCivs.smali   ← 2 条指令的转发适配
└─ tools\
   └─ apply-patch.ps1        ← 反汇编缺失 baseline 类 + 应用适配 + 改写消费点（幂等）
```

- baseline 类不复制进仓库：脚本在 `final-smali` 中找不到目标类时，用
  `.tools\smali\baksmali-2.5.2.jar` 从目标包 `classes*.dex` 现场反汇编。
- 包目录自动探测：`..\..\GameCivs\*` 中优先选带
  `assets\map\Earth3\scenarios\TheGreatWar\missions` 的包；可用 `-PackageDir` 指定。

## 构建

无需单独操作：`LoaderSettings\build-dex.bat` 会

1. `tools\merge.ps1` 重建 `final-smali`，末尾调用本子工程 `tools\apply-patch.ps1`；
2. 汇编 `final-smali` → `out\classes_smali.dex`；
3. `tools\build-java.ps1` 编译 `java\stubs` + `java\src`，再用 D8 合并 → `out\classes.dex`
   （`MissionLazy` 由这一步进 dex）。

单独运行适配脚本：

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File .\LoaderSettings\MissionLazyLoad\tools\apply-patch.ps1
# 可选参数： -FinalSmali <dir>  -PackageDir <解包目录>  -Baksmali <jar>  -JavaExe <java.exe>
```

产物仍是 `LoaderSettings\out\classes.dex`（v18：48 类 / 448,484 B）。

## 性能实测（2026-10-20，桌面 JDK11，游戏自带 class，已修好 Gdx.app 干扰）

| 项目 | 规模 | 单线程耗时 |
|---|---|---|
| #64 任务事件 `loadEvent(999,…)` | 4,882 条 / 322,457 行 / 5.2 MB | **1.25–1.43 s** |
| #59 剧本 common 事件 `loadEvent(3,…)` | 2,198 个 / 69,956 行 / 1.9 MB | **0.52 s** |
| 51 个国家任务 JSON（`Json.fromJson`） | 51 个 / 4,882 条 | **0.08 s** |

并行对比（同一批 4,882 条事件，4 线程池）：**2.23–2.50 s**，比单线程更慢——任务粒度小、
对象分配密集，线程调度/GC 开销超过收益，所以默认 `PARALLEL_THREADS = 1`。

> ⚠ 早期用无游戏上下文的桌面基准测出「44 秒」，是因为 `CFG.LOG` 里 `Gdx.app` 为 null
> 导致每行日志抛 NPE（异常栈开销）；装上空的 `Gdx.app` 后真实耗时为 1.3 s 量级。

运行时会输出一行 logcat：
`[missionlazy] loadCivs civs=... missions=... threads=1 ms=...`（过滤 `missionlazy`）。
若看不到这行，说明补丁 dex 没生效（不是补丁前置或被其它 dex 先覆盖）。

## 校验

```powershell
java -cp "..\.tools\smali\baksmali-2.5.2.jar;tools\classes" Pseudo3DAnalyze report `
     out\classes.dex out\dex-report-v18-parallel.txt <包目录>\classes*.dex
```

期望：`mod_classes=48 ... unresolved_refs=0`；
`MissionTree` 三个方法都只剩 2 条指令且引用 `MissionLazy`，`MissionLazy` 作为新增类整体采用。

## 已知取舍

- 包内 `InGame_StartGoal` / `InGame_GoalFinished` / `Button_GoalImage` 也读
  `MissionTree.missionImagesCivs`，但整包**没有** `Event.goalDura` 与 `rfEvent.goalData` 字段
  （`RefFind` 可复核），目标菜单一旦构造就会 `NoSuchFieldError`，与图片无关。
  为保持 `unresolved=0`，这三类**不纳入**补丁；若后续整合包补上这两个字段，
  把它们加进 `tools\apply-patch.ps1` 的 `$consumerClasses` 即可（通用改写会自动处理）。
- 任务图仍建议配合资源侧优化（`MissionLoadOpt\optimize_missions_assets.py`：
  缩到 ≤160px、按内容去重、PNG 压缩），两边叠加收益最大。
