# LoaderSettings Web UI 可行性研究

> **结论：可行，且不需要原生库、不需要改 APK 资源、不需要整类替换游戏 UI。**
>
> 推荐路线：**系统 WebView 作为 Web 渲染 + JS 内核**（Android 8+ 自带 Chromium），
> LoaderSettings 只新增 Java 桥与管理器 + 3 个小 smali 钩子（控制台、事件解析前置、结果通道）。
> 纯 Java JS 引擎（Rhino）作为**可选**的同步内核：已实测可 D8 化（1.14 MB / 589 类 / 8,723 方法引用），
> 但 v1 不需要它。
>
> 本文标注“已核实”的条目，均来自本仓库源码或本机对 **暮色黄昏_世界大战 0.25.1** APK 的实测。

---

## 0. TL;DR

| 需求 | 可行性 | 结论 |
|---|---|---|
| Web 核心引擎（HTML/CSS/JS 渲染） | ✅ 高 | 用系统 WebView，零 APK 体积成本；透明、无浏览器框架 |
| 隐藏 UI 的干净 Web 页面 | ✅ 高 | `setBackgroundColor(TRANSPARENT)` + `View.IN_GAME_HIDE_UI` + 全屏 WebView |
| 任意界面放按钮 / 无框弹窗 | ✅ 中高 | 小尺寸 WebView Surface + 原生 `MenuElement` 注入（宿主已有成熟代码可移植） |
| 公开控制台 API | ✅ 高 | `InGame_Console.execute(String)` 已核实，2 行转发钩子即可接管命令 |
| 公开事件解析器 API | ✅ 高 | `has_variable` 桥已量产（HotVarApi）；`EventsManager.loadEvent` 可前置改写；`add_variable` 结果可接管 |
| JavaScript 作为核心语言 | ✅ 高 | WebView 内是完整 Chromium JS（ES2020+）；需要同步返回时用“游戏线程等待 + 桥回调” |
| 热插件使用这些接口 | ✅ 高 | 与 `HotVars` 同模式：`Class.forName("com.saysky.web.…")` 反射静态门面，零编译依赖 |

**唯一硬限制：LoaderSettings 是纯 dex 补丁，不能往 APK 里加 `.so`。**
因此 QuickJS / Duktape / J2V8 这类原生引擎**在“只发 dex”的约束下不可用**；
Rhino 是唯一能直接进补丁 dex 的轻量 JS 引擎，但它没有 HTML/CSS 渲染能力。
要“Web 页面”，就必须用系统 WebView；要“纯 Java 同步 JS”，才考虑 Rhino。

---

## 1. 需求拆解

1. **Web 核心引擎**：能渲染 HTML/CSS、执行 JS、支持透明背景、无浏览器地址栏/边框。
2. **通用接口**：
   - 控制台：注册自定义命令、读取/写入控制台输出、程序化执行原版命令。
   - 事件解析器：注册自定义触发器/结果；或至少开放“触发器 → JS 求值”的通道。
   - UI 插入：在任意界面放按钮/页面/弹窗；支持无框透明。
3. **JavaScript 为核心语言**：插件作者主要写 `.html/.css/.js`，Java 只做桥。
4. **热插件接入**：现有 HotPluginLoader 的 jar/dex 插件能直接调用；不装 LoaderSettings 时优雅降级。

---

## 2. 环境事实（已核实）

### 2.1 目标包与运行环境

| 项 | 值 | 来源 |
|---|---|---|
| 包名 | `age.of.history3.zzz.twx` | `aapt dump badging` |
| minSdk / targetSdk | **26 / 34** | 同上 |
| 启动 Activity | `team.rainfall.sternstunden.AlternativeLauncher`，`extends AndroidApplication` | 替换版源码 + APK manifest |
| 硬件加速 | 未显式关闭（targetSdk 34 默认开） | `aapt dump xmltree` |
| 内存 | `android:largeHeap="true"` | 同上 |
| 网络权限 | 有 `INTERNET` | 同上 |

`AndroidApplication` 本身 `extends android.app.Activity`，所以运行期 `Gdx.app` 就是 Activity
（`Core.getInstance().android(this)` 也保存了同一个 Activity；两条路都可用）。

### 2.2 控制台（已核实）

整合包 dex 内 `Laoc/kingdoms/lukasz/menusInGame/InGame_Console;` 存在，关键成员：

```smali
.method public static final execute(Ljava/lang/String;)V      # 命令解析入口（大 if/else）
.method public static final addMessage(Ljava/lang/String;)V   # 输出一行
.field public static sMessage:Ljava/lang/String;              # 输入框内容
.field public static sConsole:Ljava/util/List;                # 输出历史
```

- 输入路径：`Keyboard` 的 `KeyboardActionType.CONSOLE` → `InGame_Console.execute(sMessage)`。
- 界面入口：游戏内“宫廷/更多 → 控制台”（`InGame_Court`）。
- 内置命令名来自 `game/gameValues/GV_Console.json`（如 `CONSOLE_COMMAND_GOLD: "gold"`）。
- 原版 `execute` 按 `split("=")` 解析，`gold`/`hours=12` 这类写法都支持。

### 2.3 事件解析器（已核实）

```smali
.method public static loadEvent(I[Ljava/lang/String;)Laoc/kingdoms/lukasz/events/Event;
```

- 逐行 `key=value` 解析；`trigger_and/trigger_or/…` 是块标记。
- `has_variable` / `has_variable_not` / `has_variable_civ` 只取 `sLine[1]`；
  `add_variable`（结果）也只取 `sLine[1]`。
- 已有 **HotVarApi** 把 3 个 `EventTrigger_HasVariable*.outCondition` 改成先问
  `com.saysky.hotvar.HotVars.has(civID, value)`，没插件认领再回退原版变量表。
  ⇒ **自定义触发器已经有一条零风险、量产验证过的通道**：值写 `前缀:参数` 即可。
- 事件结果 `EventOutcome_AddVariable.updateCiv(II)V` 可同样接管（前缀命中 → 交给 JS/插件，
  否则回退原版 `eventsDataVariables.addVariable`）。

### 2.4 UI 与坐标（已核实）

- 菜单系统：`Game.menuManager.menus`（`List<List<Menu>>`）+ `Menu.menuElements`；
  宿主 `MainMenuMount` 已证明“运行时注入原生按钮 + 自愈”可行。
- `Renderer.viewport` 是 **public static FitViewport**，`viewport.getScreenX/Y/Width/Height`
  给出 GL 实际绘制区（含黑边），是游戏坐标 ↔ 屏幕像素的权威换算依据。
- `CFG.GAME_WIDTH/HEIGHT` = 构造 Renderer 时的 `Gdx.graphics.getWidth()/getHeight()`。
- `View.IN_GAME_HIDE_UI` 存在（干净地图视图），适合“只有 Web 页面”的场景。

### 2.5 线程模型（容易踩坑，先钉死）

| 入口 | 实际线程 |
|---|---|
| `Gdx.app.postRunnable(...)` | **GL/游戏线程**（下一帧 `onDrawFrame` 内执行），不是 UI 线程 |
| WebView 创建 / `evaluateJavascript` / `LayoutParams` | **Android UI 线程**（`activity.runOnUiThread`） |
| `@JavascriptInterface` 方法 | WebView 的 **JavaBridge 后台线程** |
| 游戏逻辑 / `InGame_Console.execute` / 事件判定 | GL/游戏线程 |

### 2.6 构建管线（已实测）

`tools/build-java.ps1` 目前 javac 只挂 stubs。把 `android.jar` 加进 javac 的 `-cp` 即可直接写
WebView 代码：

```powershell
& $javac -encoding UTF-8 --release 8 -cp "$stubOut;$androidJar" -d $srcOut @srcFiles
```

已用 JDK 11 + `platforms/android-34/android.jar` 实测编译 `android.webkit.WebView` /
`android.app.Activity` / `@JavascriptInterface` 通过；D8 侧本来就已 `--lib $androidJar`，
不需要把 Android 类打进 dex。

### 2.7 Rhino（可选同步内核）容量实测

| 指标 | 实测值 |
|---|---|
| jar | `rhino-1.7.14.jar` 1,383,644 B |
| D8 产物 | `classes.dex` **1,136,148 B** |
| 类数 | 589 |
| method_ids | **8,723**（远低于 65,536） |
| field_ids | 3,752 |
| D8 告警 | 无 |

结论：**Rhino 可以安全塞进补丁 dex**；但它没有 DOM/CSS，且 ES6 只覆盖一部分
（箭头函数/模板字符串/let/const/Promise/BigInt 有；async/await 没有）。

---

## 3. 引擎选型

| 方案 | 能否只发 dex | HTML/CSS | JS 能力 | 体积/内存 | 结论 |
|---|---|---|---|---|---|
| **系统 WebView** | ✅ | ✅ 完整 Chromium | ES2020+（视系统 WebView 版本） | 0 dex；每实例约 30–80 MB | **主引擎** |
| Rhino（纯 Java） | ✅ | ❌ | ES5.1 + 部分 ES6 | +1.14 MB dex；内存低 | **可选逻辑内核** |
| QuickJS（JNI） | ❌ 需要 `.so` | ❌ | ES2020 | so 350–878 KB/ABI | 排除（dex 补丁发不了） |
| Duktape（JNI） | ❌ 需要 `.so` | ❌ | ES5.1 | so 约 600 KB | 排除 |
| J2V8 / GraalJS | ❌/巨大 | ❌ | 高 | 7.5 MB / 50 MB+ | 排除 |
| 自写 HTML 子集渲染器 | ✅ | 部分 | 自写 | 工作量巨大 | 不推荐 |

> 注：WebView 版本随系统 WebView 更新；Android 8+ 一般是 Chromium 60+。
> 建议 JS 用 ES2017 语法（或打包时转译），不要依赖 ES Module / `async` 之外的新特性。

---

## 4. 推荐架构

```mermaid
flowchart LR
    subgraph Game["游戏进程（同一 ClassLoader）"]
        G[游戏逻辑/渲染<br/>GL 线程]
        L[LoaderSettings 补丁 dex<br/>com.saysky.web.*]
        H[热插件 HotPluginLoader<br/>jar→dex]
    end
    subgraph Android["Android UI 线程"]
        K[Kernel WebView<br/>隐藏 1×1<br/>逻辑/定时驱动]
        S1[Surface WebView<br/>页面/弹窗/按钮]
        S2[Surface WebView<br/>HUD 小组件]
    end
    G <-->|postRunnable / 静态 API| L
    H -->|Class.forName 反射| L
    L <-->|runOnUiThread / evaluateJavascript| K
    L <-->|runOnUiThread / evaluateJavascript| S1
    L <-->|runOnUiThread / evaluateJavascript| S2
    S1 <-->|@JavascriptInterface| L
    K <-->|@JavascriptInterface| L
```

### 4.1 三层结构

1. **Kernel（隐藏 WebView，1×1 / GONE）**
   - 加载所有插件的 `kernel.js`；注册命令、触发器、结果处理器。
   - 不依赖 `setInterval`（后台可能被节流）；由游戏线程在关键时机触发，经 UI 线程执行 `evaluateJavascript("__tick(...)")`。
   - 也可以不创建：没有“后台逻辑”的插件只用 Surface。

2. **Surface（可见 WebView）**
   - `page`：全屏页面（可配 `View.IN_GAME_HIDE_UI` 隐藏游戏 UI）。
   - `dialog`：全屏透明 + 居中卡片（挡住游戏输入，实现模态）。
   - `widget`：指定矩形的小 WebView（HUD/浮动按钮），矩形外触摸照常进游戏。
   - `attached`：跟随某个原生 `Menu` 的矩形（原生边框 + Web 内容）。

3. **Bridge / API（Java 静态门面）**
   - 游戏 → JS：`evaluateJavascript`（UI 线程）。
   - JS → 游戏：`@JavascriptInterface` → 队列 → `Gdx.app.postRunnable`（GL 线程）。
   - 读接口的“同步返回”：用 `CountDownLatch` 在**游戏线程**等（UI 线程不阻塞），
     超时（5–20 ms）返回默认值，避免卡帧。

### 4.2 为什么不用“纯 Rhino”做 UI

Rhino 只给 JS 求值，没有 DOM/CSS/字体/动画/滚动/输入法。用它做 UI 等于自写一套浏览器，
工作量与风险都不可接受。Rhino 的合理位置是：

- 需要一个 **同步** 返回值的场景（`outCondition` 每 tick 调用、控制台命令返回值）；
- 不想为“纯逻辑插件”常驻一个隐藏 WebView（省 30–80 MB 内存）。

v1 建议先不上 Rhino：触发器用“批量快照 + 哈希表”，控制台/结果用“队列 + 下一帧”即可。

---

## 5. 能力设计

### 5.1 控制台 API

**入口钩子**（`InGame_Console.execute` 改名 + 同名转发）：

```smali
# 原方法重命名为 execute_Vanilla（一行改名）
.method public static final execute(Ljava/lang/String;)V
    .registers 1
    invoke-static {p0}, Lcom/saysky/web/WebConsole;->execute(Ljava/lang/String;)V
    return-void
.end method
```

`WebConsole.execute(cmd)`：

1. `web` 内置命令：`web open <plugin>/<surface>`、`web close`、`web reload`、
   `web eval <plugin> <js>`、`web devtools`、`web surfaces`。
2. 插件命令：按首 token 查注册表（`ConcurrentHashMap`）。
   - 原生处理器：同步执行，直接 `InGame_Console.addMessage(...)`。
   - JS 处理器：`WebCore.callSync(pluginId, "cmd('...')", 20ms)`；
     超时则输出“已排队”，由下一帧异步执行。
3. 未命中 → `InGame_Console.execute_Vanilla(cmd)`（原版行为完全不变）。

**JS 侧**：

```js
AOH3.console.command('mygold', (args) => {
  AOH3.game.exec('gold');           // 调原版命令
  return '已加钱：' + args[0];
});
AOH3.console.print('hello');        // 输出到游戏控制台
AOH3.console.open();                // 打开控制台界面
```

### 5.2 事件解析器 API

分两层，**v1 只做第 1 层**（零 parser 改动）：

#### 第 1 层：值命名空间（已有 HotVarApi 通道）

事件文件里直接写：

```ini
trigger_and
has_variable=myplugin:gold:gt:1000
trigger_and_end
```

- `HotVars` 已经把 `has_variable` 的求值桥接出来；
  `WebEvents` 只注册一个 `Provider`，前缀命中后查“标志表”（O(1)、无分配）。
- 标志表由 JS 推送：

```js
AOH3.events.setFlag('myplugin:gold:gt:1000', true);       // 全局
AOH3.events.setFlag('myplugin:atwar', true, 42);          // 指定 civID
```

- 原生查找：先 `var#civID`，再 `var`，都没有返回 `false`（回退原版变量表由 `HotVars` 负责）。
- 刷新时机：游戏线程按帧/按回合触发（投递到 UI 线程执行 `evaluateJavascript("AOH3.__tick(json)")`），
  JS 在 `__tick` 内重算并 `setFlag`；**不在 `outCondition` 里逐次调 JS**。
  - 语义：自定义标志最多滞后 N 帧（建议 1–4 帧或“每天一次”），对事件系统足够；
  - 性能：后期 `has_variable` 每天上万次，绝不能逐次跨线程。

#### 第 2 层（可选）：直接写自定义键名

想让作者写 `my_gold_over=1000` 而不是 `has_variable=...`，则在
`EventsManager.loadEvent` 头部前置改写：

```smali
# 在 move/from16 v1,p0 ; move-object/from16 v2,p1 之后、:try_start_4 之前
invoke-static {v1, v2}, Lcom/saysky/web/WebEvents;->preprocess(I[Ljava/lang/String;)[Ljava/lang/String;
move-result-object v2
```

`preprocess` 用小状态机跟踪 `trigger_*` / `option_btn` 块，把注册过的自定义键改写成：

- 触发器：`my_gold_over=1000` → `has_variable=myplugin:my_gold_over:1000`
- 结果：`my_effect=abc` → `add_variable=myplugin:out:my_effect:abc`

**代价与前提**：

- 整类 `EventsManager` 会进补丁 dex（smali 944 KB，dex 约 +250–400 KB）。
- 自定义键名必须在**事件加载前**已知：`preprocess` 首次调用时扫描
  `hotplugins/resources/*/web/web.json`（一次目录扫描，毫秒级）。
  热插件 `init()` 通常在游戏加载之后，**来不及**注册新键名；所以第 2 层只适合
  “清单文件里声明的键”，不适合运行时动态注册。
- 因此：**第 1 层的 `has_variable=前缀:...` 是主通道**，第 2 层只是语法糖。

#### 事件结果（outcome）

`EventOutcome_AddVariable.updateCiv(II)V` 改名 + 转发（同控制台套路）：

```smali
.method public updateCiv(II)V
    .registers 5
    iget-object v0, p0, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;->value:Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/saysky/web/WebEvents;->outcome(ILjava/lang/String;)Z
    move-result v1
    if-eqz v1, :vanilla
    return-void
    :vanilla
    invoke-virtual {p0, p1, p2}, Laoc/kingdoms/lukasz/events/outcome/EventOutcome_AddVariable;->updateCiv_Vanilla(II)V
    return-void
.end method
```

- 前缀命中 → 交给 JS（入队，下一帧执行；`add_variable` 仍会写原版变量表作为存档镜像，
  可选）。
- 未命中 → 原版变量写入，完全不变。
- 需要“同一 tick 内立即生效”的效果，请用原生 Java 处理器（插件实现），不要走 JS。

### 5.3 Web 页面插入（页面/弹窗/按钮）

| 形态 | 实现 | 适用 |
|---|---|---|
| 全屏页面 | 全屏 WebView + `View.IN_GAME_HIDE_UI` | 大型面板、地图工具、编辑器 |
| 无框弹窗 | 全屏透明 WebView + CSS 卡片 + 半透明遮罩 | 确认框、设置、事件页 |
| 浮动按钮/HUD | 指定 rect 的 WebView，`draggable` 由 JS 上报新 rect | 常驻工具、快捷入口 |
| 原生菜单内按钮 | 反射注入 `ButtonGame2` 到 `Menu.menuElements` | 主菜单/宫廷/任务页入口 |
| 原生弹窗内嵌 Web | WebView 矩形 = `Menu.getPosX/Y/Width/Height` 同步 | 原生边框 + Web 内容（非滚动页） |

**关键实现点**：

- WebView 用 `activity.addContentView(view, MATCH_PARENT)` 叠加在 GLSurfaceView 之上；
  `setBackgroundColor(0x00000000)` + HTML `background: transparent`。
- 坐标换算以 `Renderer.viewport` 为准：

```text
sx = viewport.screenX + gx * viewport.screenWidth  / CFG.GAME_WIDTH
sy = topInset     + gy * viewport.screenHeight / CFG.GAME_HEIGHT
（topInset = 窗口高度 - viewport.screenY - viewport.screenHeight）
```

- 原生按钮注入：移植宿主 `MainMenuMount` 的成熟做法
  （追加元素 → 下移后续元素 → `setHeight` → `updateScrollable` →
  `updateMenuElements_IsInView` → 每帧自愈）。
- 全屏 WebView 会吞掉所有触摸；**非模态组件必须把自己的 rect 设小**。
  “全屏透明但局部可点透”需要 `dispatchTouchEvent` 命中测试 + 转发给 GLSurfaceView，
  属 v3 高级项，不建议 v1 做。

**JS 侧草案**：

```js
const id = AOH3.ui.open({
  type: 'dialog',              // page | dialog | widget | attached
  url: 'pages/settings.html',  // 相对插件 web/ 目录
  rect: [0.1, 0.2, 0.8, 0.6],  // 归一化；widget 用像素
  dim: true,                   // 弹窗遮罩
  draggable: false
});
AOH3.ui.close(id);
AOH3.ui.hideGameUI(true);
AOH3.ui.toast('保存成功');
```

### 5.4 热插件接入

与 `HotVars` 完全同构，**零编译依赖**：

```java
Class<?> web = Class.forName("com.saysky.web.WebCore");
web.getMethod("registerPlugin", String.class, String.class, String.class)
   .invoke(null, "myplugin", webDir, "pages/main.html");
```

- `webDir` = `hotplugins/resources/<plugin>/web/`（插件资源目录，外部存储，免权限）。
- 插件清单可放在 `plugin.json` 同级或 `web/web.json`；LoaderSettings 启动/重载时扫描。
- 热重载（宿主“全部重载”）→ 调 `WebCore.onPluginsReloaded()`：
  关闭所有 Surface、清空命令/触发器、重新扫描。
- 不装 LoaderSettings：`Class.forName` 抛异常 → 插件回退到原生 UI 或静默降级。

**`web.json` 草案**：

```json
{
  "id": "myplugin",
  "kernel": "kernel.js",
  "surfaces": [
    { "id": "main", "type": "page", "entry": "pages/main.html" },
    { "id": "hud",  "type": "widget", "entry": "pages/hud.html",
      "rect": [16, 96, 320, 120], "draggable": true }
  ],
  "commands": { "mygold": "cmd/gold.js", "myopen": "cmd/open.js" },
  "triggers": ["myplugin:"],
  "outcomes": ["myplugin:"],
  "buttons": [
    { "menu": "aoc.kingdoms.lukasz.menus.MainMenu",
      "anchor": "LoadGame", "text": "我的页面", "open": "main" }
  ]
}
```

---

## 6. 关键钩子清单（可行性核心）

| # | 目标 | 类型 | 改动 | 风险 |
|---|---|---|---|---|
| 1 | `InGame_Console.execute(String)V` | 改名 + 同名转发 | 2 个方法 | 低（入口唯一） |
| 2 | `EventsManager.loadEvent(I[String])Event` | 头部插 `preprocess` | 2 条指令 | 中（整类进补丁 dex，+~300 KB） |
| 3 | `EventOutcome_AddVariable.updateCiv(II)V` | 改名 + 同名转发 | 2 个方法 | 低 |
| 4 | `HotVars`（已有） | 无需改 | 复用现有 3 个触发器钩子 | 零 |
| 5 | 原生按钮注入 | 无 smali | Java 反射 | 中（需处理重建/滚动/自愈） |
| 6 | 回合开始刷新标志（可选） | `Game_Calendar.nextDays(I)V` 头部 | 1 条 invoke | 低 |

> 1/3/6 都是“整方法改名 + 同名转发”，与 `SiegeTint`/`ArmyVoice` 已验证的套路一致；
> `merge.ps1` 新增一个子工程段即可（`Ensure-Class` 从目标包 dex 抽取）。

**注意**：补丁 dex 中出现的类会**整类替换**包内同名类。因此 1/2/3 的类必须从**目标包自身**的
dex 反汇编（`Ensure-Class`），不能用 PC `game.jar` 的版本，否则 R8 差异会导致行为变化。

---

## 7. 体积与性能预算

| 项 | 预算 |
|---|---|
| 补丁 dex（当前） | 548 KB / 64 类 |
| + 控制台+结果钩子类 | +60–90 KB |
| + `EventsManager`（仅第 2 层） | +250–400 KB |
| + Rhino（可选） | +1.14 MB |
| WebView 内存（每实例） | 30–80 MB（系统进程，`largeHeap=true` 有帮助） |
| 隐藏 Kernel WebView | 一个约 30–50 MB；纯逻辑插件可改用 Rhino 省掉 |
| 每帧新增开销 | 0（无页面时）；有页面时仅 `evaluateJavascript`/布局同步 |

**性能纪律**：

1. 无页面时 WebView `GONE`，不参与合成。
2. 触发器不得逐次调 JS；用标志表 + 批量刷新。
3. 状态推送限频（HUD 5–10 Hz；逻辑 tick 每天一次）。
4. Surface 关闭即回收；最多同时 2–3 个 WebView。
5. `callSync` 超时（5–20 ms）必须存在，超时用默认值，绝不无限等。

---

## 8. 风险与对策

| 风险 | 影响 | 对策 |
|---|---|---|
| WebView 叠加在 GLSurfaceView 上的 z-order/合成（未真机验证） | 页面不可见/闪烁 | 业界常规做法（`addContentView`）；PoC 第一项验证；必要时 `setLayerType(HARDWARE)` |
| 全屏 WebView 吞触摸 | 游戏无法点击 | 非模态用 rect 限定；模态明确挡住；v3 再做命中转发 |
| 输入法弹出导致 Activity 重布局（`adjustResize`） | 地图/UI 跳动 | 运行时 `setSoftInputMode(ADJUST_NOTHING/PAN)`；或 Web 页面避免文本输入 |
| 返回键被 WebView 吃掉 | 无法关闭页面 | v1：页面内提供关闭按钮；v2：`AA_KeyManager` 钩子优先关 Surface |
| 老设备 WebView 版本低 | ES 语法不支持 | JS 按 ES2017 打包；避免 ES Module；`shouldInterceptRequest` 提供虚拟 https 源 |
| WebView 进程崩溃 | 页面白屏 | `onRenderProcessGone` 重建；桥方法全 try/catch |
| WebView 被系统禁用/缺失（个别 ROM） | 无法使用 | `WebCore.available()` 探测 + 回退原生 UI |
| 原生弹窗盖不住 WebView（WebView 永远在最上层） | 游戏下拉框被遮 | 打开游戏弹窗前隐藏/缩小 Surface（监听 `MenuManager` 活动菜单） |
| 原生菜单滚动时 attached 区域错位 | 内容错位 | 只对非滚动弹窗用 attached；滚动页用独立 dialog |
| 插件乱调 API | 游戏崩溃/存档损坏 | 清单声明能力（commands/triggers/exec）；`exec` 默认关闭，需显式开启 |
| 安全（本地 HTML 调桥） | 恶意插件 | 只加载插件目录；默认禁网；`addJavascriptInterface` 只暴露白名单；`setAllowFileAccess` 按需 |
| 桌面端无 WebView | 插件跨平台失效 | 明确 Android-only；桌面回退原生 UI（或未来 JavaFX，不在本方案） |

---

## 9. 分阶段实施计划

### Phase 0：PoC（1–2 天，需真机）

1. `WebCore` 最小实现：`addContentView` 一个透明 WebView，加载
   `hotplugins/resources/webdemo/index.html`（含一个按钮 + `console.log`）。
2. 验证：z-order、透明、触摸范围、输入法、返回键、内存/FPS、`evaluateJavascript` 往返。
3. 验收门槛：页面稳定显示 10 分钟、游戏可正常操作、无 ANR/崩溃、FPS 无明显下降。

### Phase 1：核心可用 v1（约 1–2 周）

- `WebCore`：Surface 生命周期（page/dialog/widget）、`web.json` 扫描、虚拟文件源、
  Kernel WebView、`WebBridge`、`WebStorage`、错误/崩溃恢复。
- `WebConsole`：控制台钩子 + 命令注册 + `web` 内置命令 + 输出。
- `WebUi`：原生按钮注入（移植 `MainMenuMount`）+ toast + 隐藏游戏 UI。
- 热插件门面 + 示例插件（`webdemo`）+ 文档。

### Phase 2：事件层（约 3–5 天）

- `WebEvents`：`HotVars` Provider + 标志表 + `setFlag` + 每日/tick 刷新。
- 结果钩子（`add_variable` 前缀接管）。
- 可选：`preprocess` 自定义键名（+EventsManager 进补丁 dex）。

### Phase 3：可选增强

- Rhino 同步内核（`js:` 命名空间；控制台/结果同步求值；实测帧耗时）。
- 单全屏 WebView + 命中测试转发（真正的“任意位置可点透”）。
- `attached` 菜单内嵌、动画同步、`AA_KeyManager` 返回键接管。
- 桌面端映射（如未来需要）。

### 验收清单（真机）

- [ ] 主菜单注入按钮 → 打开 dialog 页面 → 关闭后游戏输入正常
- [ ] 控制台 `mygold=100` 命中插件命令；`gold` 仍走原版
- [ ] 事件 `has_variable=myplugin:...` 按标志表触发；无标志时不影响原版
- [ ] `add_variable=myplugin:out:...` 触发 JS，原版变量仍可写
- [ ] 四个页面来回切换 50 次无泄漏（`dumpsys meminfo`）
- [ ] 后台 30 分钟回来页面仍在、游戏未重启
- [ ] 关闭日志后无每帧字符串拼接/反射

---

## 10. 未决问题（需要产品决策）

1. **触发器刷新语义**：允许“最多滞后 N 帧/一天”，还是必须同 tick 精确？
   后者要引入 Rhino 或“游戏线程等 JS”的 `callSync`（有卡帧风险）。
2. **是否需要 JS 直接读写存档字段**（金币/ manpower 等）：
   建议只给 `game.exec(控制台命令)`，不开放任意字段写，降低坏档风险。
3. **桌面端**：明确 Web UI 仅 Android？
4. **WebView 页面来源**：只允许插件目录（推荐），还是也允许 `http(s)` 远程页面？
5. **是否要“全屏透明 + 局部点透”**：这决定 v3 的单 WebView 命中转发是否要做。
6. **语法糖**：是否需要自定义键名（要背 `EventsManager` 整类 +300 KB）？

---

## 11. 建议的代码落点（若立项）

```text
LoaderSettings\
├─ WebUI\                         ← 新子工程（与 SiegeTint 同级）
│  ├─ tools\apply-patch.ps1       ← 控制台/结果/预处理 3 个钩子（幂等）
│  └─ README.md
├─ java\src\com\saysky\web\
│  ├─ WebCore.java                ← 生命周期、Surface、Kernel、坐标、线程
│  ├─ WebBridge.java              ← @JavascriptInterface 白名单
│  ├─ WebConsole.java             ← InGame_Console 转发 + 命令表
│  ├─ WebEvents.java              ← HotVars Provider + 标志表 + preprocess + outcome
│  ├─ WebUi.java                  ← 原生按钮注入 / toast / hideUI
│  ├─ WebStorage.java             ← 插件私有 JSON 存储（HotFiles 模式）
│  └─ WebPluginRegistry.java      ← web.json 扫描/禁用/重载
└─ java\stubs\                    ← 补 InGame_Console / EventsManager / EventOutcome_AddVariable
                                     / Game_Calendar / Viewport / (android 用 android.jar)
```

`tools/build-java.ps1` 只需一处改动：javac 的 `-cp` 追加 `$androidJar`。
`tools/merge.ps1` 末尾加一段调用 `WebUI\tools\apply-patch.ps1`（第 16 段）。
