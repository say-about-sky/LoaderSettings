# UI Kit 挂载 / 缺字 踩坑与修复记录

> 适用代码：`LoaderSettings\java\src\com\saysky\ui\kit\**`（v2 `com.saysky.ui.kit`）
> 适用产物：`LoaderSettings\out\classes.dex`（补丁 dex）+ `out\ui-api.jar`（二次开发 API）
> 参考实现：v1 `com.saysky.ui.UiEngine / UiHost`（已验证可用，v2 的算法蓝本）

---

## 0. 先记住三条铁律

1. **不要对别人的菜单调 `updateMenuElements_IsInView()` / `updateScrollable()`**。
2. **绝不写语言包的 `charset`**（Polaris 这类包自己会修字体，写进去等于覆盖它的值）。
3. **排障只看 `hotplugins\hotloader.log`**，行首 `AOH3UI:`（本机读不到 adb logcat）。

---

## 1. 挂载（Mount）

### 1.1 症状

| 现象 | 真实原因 |
|---|---|
| 页面上出现一块空白，但没有我的按钮 | 元素被插到"列底"，落在面板 `iHeight`／可见区之外 → `Menu.drawMenuElements` 的 `getIsInView()` 为 false，直接不画 |
| 主菜单被塞满、要滚动、原来能点的按钮点不到 | 主菜单被当成普通可滚动菜单加高，`iMaxSliderPositionY` / `scrollableY` 被写坏 |
| 原版元素整片消失 | 滚入动画期间调用了 `updateMenuElements_IsInView()`，把还没进入视口的原版元素标记成不可见 |
| 行距比预期大一倍 | 锚点失败后落到底部，同时宿主「附加包」行也在下移 → 两次位移叠加 |
| 元素加了但永远不显示 | 忘了同步 `iMenuElementsSize`——`Menu.drawMenuElements` 用**这个缓存字段**当循环上界，不是 `list.size()` |
| 每帧刷一堆异常但界面没坏 | `Menu.drawMenuElements` 对每个元素 `try/catch` **静默吞异常**，你的 bug 只会表现为"少画一个元素" |

### 1.2 原生 UI 的关键事实（polaris smali 核实）

- **没有布局库**，全是 Java 手绘立即模式：坐标是**绝对屏幕坐标**。
- `Menu` 有两个高度概念：
  - `getHeight()` —— 逻辑高度（主菜单是 `GAME_HEIGHT`）；
  - **页面私有 `iHeight`** —— 真正决定可见面板画多高（`MainMenu` 就是私有的）。
- `isInView` 只在 `initMenu()` / 滚动时重算；`iMenuElementsSize` 是独立字段。
- `MainMenu.draw()`（Polaris 版）每帧只对 `buttonElementIDs` 里登记的按钮做滑入平移；**不登记 = 不动**（我们把元素加进去但**不登记**，正好避开）。

### 1.3 v2 的错误做法 → 修复后（= v1 算法）

| 环节 | 错误做法 | 现在的做法 |
|---|---|---|
| 插入位置 | 追加到列底 | 锚点行**正下方**：`insertY = anchorBottom + 2*PADDING`（`above` 时为 `anchor.getPosY() - delta`） |
| 原版元素 | 完全不动 | 同列、该点之后的元素整体下移 `blockHeight + 2*PADDING`（`shift()`） |
| 主菜单锚点 | 按文本 `"LoadGame"` 匹配，中文包匹配失败 → 落底 | 新增锚点模式 `ANCHOR_LOADER`：锚宿主「附加包」行；**没出现就等**（`LOADER_WAIT_MS=1500ms`），避免与宿主的位移叠加 |
| 行宽 | 各自宽度 | 取 loader 行的并集区域（`rowX = 2*PADDING`、`rowW = menuWidth - 4*PADDING` 兜底） |
| 面板加高（FIT） | 只 `setHeight()` | 改**页面自己的私有 `iHeight`**（`UiRef.growPanel`），随后钉死 `scrollableX=false` / `scrollableY=false`（`pinNotScrollable`） |
| 面板加高（SCROLL） | 直接开滚动 | 放得下就先加基类 `iHeight`；放不下才 `iMaxSliderPositionY = contentBottom` + `scrollableY=true` |
| 可见性 | 调 `updateMenuElements_IsInView()` | 只对自己元素每帧 `setVisible/setIsInView`，并 `syncSize` 同步 `iMenuElementsSize` |
| 自愈 | 无 | 每帧 `enforce()`：只改自己元素的 `x/width/visible/inView`（+ `syncSize`），别人的一个字节都不碰 |

### 1.4 代码位置

- `UiMount.mountOn()` —— 首次挂载（找锚点 → 下移原版 → 放置自己 → `layoutUpdate` → `UiFont.probe`）
- `UiMount.enforce()` —— 每帧自愈
- `UiMount.layoutUpdate()` —— FIT / SCROLL 两种加高策略
- `UiMount.anchorFor()/findLoaderRow()/isLoaderElement()` —— 锚点解析
- 常量：`ANCHOR_LOADER = 3`、`LOADER_WAIT_MS = 1500`、`MAX_INSTANCES = 2`

### 1.5 使用方式

```java
Ui.mount("my.plugin", Pages.SETTINGS, "Back")
  .kind(UiMenu.SCROLL)          // 放不下自动变滚动；FIT = 固定铺满不滚动
  .add(new UiButton("我的行", 0).onClick(() -> Ui.toast("ok")));
```

主菜单用 `Pages.MAIN` + `UiMenu.SCROLL`，锚点写 `"LoadGame"` 即可：找不到会自动走 loader 行（`ANCHOR_LOADER`）。

### 1.6 验收日志（`hotloader.log` 过滤 `AOH3UI:`）

```
mount registered: plugin=… page=… anchor=… kind=…
mounted aoc…MainMenu anchor=附加包 row=24,812 412x56 delta=64 list=57 menuH=1080
```

- `row=…` 起点落在锚点行正下方；
- `delta` = 自身块高 + 2×padding；
- `list` 应等于挂载后真实元素数（否则 `iMenuElementsSize` 没同步）。

---

## 2. 缺字（"启  热加载" 这类空洞）

### 2.1 先搞清机制：charset ≠ 字体

```
InitGame:
  Renderer.clearFonts()
  Renderer.charset = Game.lang.get("charset")           // 决定"烘焙哪些字"
  Renderer.loadFont(font, Renderer.charset, size) ×N    // FreeTypeFontParameter.characters = charset
```

- `charset` 只决定**光栅化哪些字符**；**字形轮廓来自 .ttf/.otf**。
- **没有运行时补字形的 API**：charset 必须在上面那次烘焙**之前**就是完整的（宿主的 `CharsetFix` 做的就是这件事）。
- 所以"中文缺字"只有两种可能：
  1. 字不在 charset 里 → **补语言包**；
  2. 字在 charset 里，但字体没有该码位轮廓 → **换字体**。

### 2.2 本案实测结论

| 检查项 | 结果 |
|---|---|
| `settings\Settings.txt` | `LANGUAGE_TAG: "cn_sp"` |
| `game\languages\Bundle_cn_sp.properties` | `charset=` 只有 1 条，**1785 字**，`missing=''` |
| 目标字（用/开/时/调/试） | **都在 charset 里** |
| 当前字体 | `NotoSansCJKkr-Regular.otf` —— **韩文 CJK 子集，缺简体专用码位** |

→ 结论：**是字体缺轮廓（第 2 种），不是 charset 太短。**

### 2.3 v2 的错误做法 → 修复后

| 环节 | 错误做法 | 现在的做法 |
|---|---|---|
| `UiFont` | 把 kit 文案里的字符**写进** `LanguageManager.bundle.properties` 的 `charset` | **完全不写**，只做只读诊断 `probe()` |
| 后果 | 覆盖了 Polaris 自己维护的 charset → 整包中文被"吞" | 不动 charset，Polaris 的字体修复照常生效 |
| kit 文案来源 | 硬编码难字 | 优先用 `Game.lang.get(...)` 里已有的键，减少新字 |

### 2.4 只读诊断（`UiFont.probe`）

挂载成功后自动打一行（样例）：

```
font probe: charsetLen=1785 sample='启动热加载' 启(U+542F)=cs:y,glyph:y 动(U+52A8)=cs:y,glyph:y 调(U+8C03)=cs:y,glyph:n
 | cs:y+glyph:n => font has no outline; cs:n => charset too short
```

判读：

| 输出 | 含义 | 动作 |
|---|---|---|
| `cs:n` | 该字不在 charset | 补语言包 `charset=`（并同步安卓 assets 后重打 APK） |
| `cs:y,glyph:n` | 字在 charset，但字体无轮廓 | **换字体** |
| 两者皆 `y` 但仍显示空洞 | 不是字体问题 | 查绘制通道/裁剪/`isInView` |

### 2.5 换字体（本案修复动作）

`game\fonts\` 已有简体全字库，择一替换 `font / font2 / font3 / font4`：

- `SourceHanSerifCN-SemiBold.ttf`（12.9MB，思源宋体简体）
- `方正粗楷简体.ttf`、`觉醒黑70J.ttf`、`默认.ttf`

要点：

- 改 `Bundle_cn_sp.properties` 里的 `font*=` 键即可，**不用改 dex**；
- 先备份（`.bak`）；
- **桌面** `A:\android\Age.of.History.3\game\languages\` 与**安卓包** `A:\android\polaris\assets\game\languages\` 各一份，安卓侧需重新打包才生效；
- 换完必须**重启游戏**（`InitGame` 只烘焙一次）。

---

## 3. 日志通道（本机只能走 Finality log）

- 宿主：`com.saysky.hotplugloader.SafeLog`，`i(String)` / `e(String, Throwable)` / `d(String)` / `v(String)`（**没有 `w`**）。
- kit 的 `UiLog` 用反射优先调 `SafeLog`（→ `hotplugins\hotloader.log`），失败才回退 `android.util.Log`；前缀固定 `AOH3UI:`。
- 文件位置：
  - 安卓：`/storage/emulated/0/Android/data/<包名>/files/hotplugins/hotloader.log`
  - 桌面：`<游戏根>\hotplugins\hotloader.log`
- 常用过滤：`AOH3UI:`（kit）、`missionlazy`（任务图）、`lateperf`（后期性能）。

---

## 4. 构建 / 验证

```bat
cd LoaderSettings
build-dex.bat
```

产出与验收：

- `out\classes.dex`（约 70 万字节）与 `out\ui-api.jar` 均刷新；
- `tools\verify-dex.ps1` 报 **`unresolved_refs=0`**（非 0 说明有新类没进 patch 或桩没写）；
- 写日志的类改了之后**必须重出 dex**，否则日志行不会出现。

---

## 5. 后续待办

- [x] `Army3DWeb`（主菜单 + 设置页）与 `WebUIDemo`（Esc 暂停菜单，验证"超出自动变滚动"）已从 v1 `UiHost` 迁到 kit（2026-10-31）。
      ⚠ 迁移后这两个插件工程**必须**在 `build.gradle` 里 `compileOnly files(game.jar)`：kit 的公开签名引用 `MenuElement`/`ButtonGame2`，
      缺 game.jar 时 javac 报"找不到 aoc…MenuElement 的类文件"，而 Gradle 会把它包装成一句没有信息量的 `java.lang.NullPointerException`
      （`Execution failed for task ':compileJava'`）。用 `--info` 才能看到真实错误。
      `Army3DWeb` 原本就有这条依赖，`WebUIDemo` 已补上（含 `-PgameJar=` 与存在性校验）。
- [ ] 若 `font probe` 仍报 `glyph:n` → 按 §2.5 换字体。
- [ ] 若报 `cs:n` → 补 `Bundle_cn_sp.properties` 的 `charset=`，并同步 `A:\android\polaris\assets\...` 重打 APK。
- [ ] 真机验收清单：主菜单（原版行距不变 + 宿主「附加包」行下方多一行）、设置页（WebCore/Army3DWeb 行）、
      Esc 暂停菜单（WebUIDemo 四行 + 「面板」行，行数超出时自动变滚动）、面板跳转（`Ui.panel(...).show()`）。

## 6. 构建环境两个常见坑（与代码无关）

1. `Unsupported class file major version 69` —— Gradle 脚本缓存被 JDK 25 编译污染。修：删
   `%USERPROFILE%\.gradle\caches\8.2\scripts` 与 `\kotlin-dsl`，并用 `JAVA_HOME=<JDK11>` 构建
   （Gradle 8.2 不支持 JDK 25）。
2. `:compileJava` 抛 `java.lang.NullPointerException` —— 先怀疑**依赖缺失**（见 §5 的 game.jar），
   用 `gradlew.bat compileJava --info` 看 javac 的真实报错，不要被 Gradle 的包装异常误导。

## 7. 冷启动缺字的真因：并发，不是顺序（2026-10-31 定案）

**结论：不要动 polaris 的字体加载。** `InitGame.initGame()` 不是"一个可以挪的队列"，而是 `iStepID`
分步状态机（每帧推进一步，部分步骤还有 `takeABreak`）：

| step | 动作 | 依赖 |
|---|---|---|
| 1 | `clearFonts()` + `Renderer.charset = Game.lang.get("charset")` + `loadFont(font,...)` → `FONT_BOLD` | `Game.lang` |
| 2 | `loadImagesInit()`，之后可能跳去**语言选择菜单** | |
| 4 | `reloadBoldFont` 时**再 `clearFonts()` 重烘** + `GameValues.init()` | |
| 5 / 6 / 8 / 9 | `FONT_REGULAR` / `FONT_BOLD_SMALL` / `FONT_CITIES` / `FONT_REGULAR_SMALL` | |
| 7 | `FONT_ARMY`，charset 只给拉丁字符 | `GameValues.fog.TEXT_UNKNOWN_ARMIES` |
| 12 | `loadFontBorder(fontCivNames, charset2)` | |

提前烘焙会踩三重坑：① step 1 / step 4 的 `clearFonts()` 会把提前烘好的字体 `dispose()` 掉；
② step 5 / 7 依赖 `GameValues.value.DEFAULT_FONT_*`、`GameValues.fog.TEXT_UNKNOWN_ARMIES`，
这些在 step 4 之后才 init，提前会 NPE 或让 `loadFont` 回退到 `Roboto-Bold.ttf`（纯拉丁，必然缺字）；
③ `InitGame` 是**整类替换件**，与 APK 版本绑定，改一次换包就要重做。

**真实根因是并发。** `AA_Game.create()` 的顺序是：

```
Game.loadLanguage()
Renderer.loadFont(Game.lang.get("font"), "A")   ← 临时占位字体，只有字母 A 的字形
initGame()                                       ← 上面那个 iStepID 状态机
```

宿主冷加载的插件 `init` 跑在**后台线程**，正好和 GL 线程上的 `InitGame` 状态机并发。后台线程里
`new` 原生控件（`ButtonGame2` 在构造时就把 `iFontID` 存下来）要读 `CFG.FONT_BOLD` / `Renderer.fontMain`，
GL 线程同时正在 `clearFonts()` / `loadFont()` 改这两个静态字段 → `CFG.FONT_BOLD = fontMain.size()-1`
算错或停在那份临时 "A" 字体的索引 → **整局所有文字都用只有字母的字体** = 全中文缺字。

这解释了三个现象：与插件开关严格对应（禁用即恢复）；整局持久；每次"一模一样"（同样的偏移量）。

### 修法：把玩家挡在字体烘焙之后，而不是挪字体

```
UiFont.ready()  =  Renderer.fontMain != null && Renderer.fontMain.size() > 0 && CFG.FONT_REGULAR > 0
```

- 取 `CFG.FONT_REGULAR`（step 5 完成）而不是 `FONT_BOLD`（step 1 就是 0，无法区分）；
- `Ui.loop()` 未就绪时只重新 `postRunnable` 自己，不 tick、不挂载，每 120 帧记一次
  `kit waiting for fonts (frame=N)`；
- `UiMount.tick()` 开头再挡一次（双保险）；
- **fail-open**：反射或字段读取抛异常时返回 `true`，宁可 UI 早一点出现也不要永久冻死。

语言切换时 step 4 会 `clearFonts()` → 短暂 not-ready → tick 自动暂停再恢复，无害。

### 配套铁律（缺一就会复发）

1. 插件 `init` 里**绝不 `new` 任何原生控件**（`UiButton` / `ButtonGame2` / 任何 `MenuElement`）。
   一律用 `UiMount.addRow(RowFactory)` / `UiMount.block(Block)`，等目标页面出现时才创建（GL 线程，字体已就绪）。
2. 插件 `init` 首行 `Ui.unmountPlugin(id)`，静态字段一并重置 —— 否则「全部重载」会让 Esc 菜单出现**两组相同行**。
3. `UiMount.remove()` 必须真的把元素从**所有活动** `Menu` 的 `menuElements` 里删掉并 `syncSize`，
   否则"移除"只是逻辑标记，页面上还在画。
## 8. 门控只挡 UI，不挡资源（资源覆盖依然最早生效）

**`UiFont.ready()` 只出现在三条 UI 路径上**：`Ui.loop()`、`UiMount.tick()`、`Ui.ready()/Ui.onReady()`。
插件加载链路完全不碰它：

| 环节 | 时机 | 受门控影响 |
|---|---|---|
| `ResourceOverride` 注册（override 树扫描） | `FileManager$3` 构造 = `AA_Game.create()` 第一句 `FileManager.initLoadInterface()` | **否** |
| `HotPlugin.init(HotContext)` / dex+jav 加载 | `ColdTick` → `StartupLoader` 后台线程 | **否** |
| `Game.loadLanguage()`（`LanguageManager` 走 `FileManager.loadFile`） | `AA_Game.create()` | 否 |
| `Renderer.loadFont(font, "A")` 占位 | `AA_Game.create()` | 否 |
| `InitGame` step 1..12 字体烘焙 | 加载屏 | 否 |
| `Ui` 建元素 / 挂行 | 主线程（GL 帧） | **是（等 step 5）** |

`ResourceOverride` 构造时就 `rescan()`，扫的是**文件系统** `hotplugins/resources/<附加包>/override/`，
与插件 jar/dex 无关 —— 也就是说 **resources 与插件本体本来就是分开加载的**，不需要再拆。

因此：插件 `init` 里读配置、写私有文件、声明 override、准备数据 — 都照旧放心做；
**只有** `new` 原生控件（`UiButton`/`ButtonGame2`/任何 `MenuElement`）必须推迟。

### 给插件作者的两种写法

```java
// 推荐：延迟工厂，页面出现时才建（GL 线程，字体已就绪）
Ui.mount("myplugin", Pages.MAIN, "LoadGame")
  .kind(UiMenu.SCROLL)
  .addRow(new UiMount.RowFactory() {
      public MenuElement create(Menu target) {
          return new UiButton("我的行", 0).onClick(() -> { /* ... */ });
      }
  });

// 需要自己搭菜单（Ui.panel 等）时，用 onReady 包起来
Ui.onReady(() -> {
    UiMenu m = Ui.panel("我的面板", 0);
    m.add(new UiButton("按钮", 0));
    m.sync().show();
});
```

`Ui.ready()` 可随时查询。**禁止**在 `init` 里直接 `new UiButton(...)`：
`Theme.fontRegular/fontBold/fontSmall` 现在会在未就绪时记一条
`Theme.xxx used before fonts are baked ...` 的 WARN，看到这条就说明有插件违规了。

### 运行期限制（本质约束，无法绕）

字体只在 `InitGame` 烘一次。所以**运行中**才启用的 override 字体/charset 要**重启游戏**才生效；
`override` 里的图片/文本/JSON 不受此限（每次 `FileManager.loadFile` 现查现取，`rescan()` 后立即生效）。