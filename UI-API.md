# LoaderSettings UI API（v1，2026-10-27）

> 目标：把游戏主要页面/按钮抽象成**插件必须继承的基类**，让热插件加 UI 时不再自己算坐标、不再手改 `menuElements`。
> 插件只描述「哪个页面 + 什么文本/图标 + 点击做什么」，**插入位置、下方行下移、面板加高/滚动范围扩展、可见性、页面重建后重挂**全部由宿主完成。

## 1. 组成

```
热插件 (plugin dex)
  └─ extends TextButtonSpec / IconButtonSpec      ← 必须派生（规则）
        pageId() / label() / icon() / onClick()
              │  UiHost.addButton(pluginId, spec)
              ▼
LoaderSettings 补丁 dex
  ├─ com.saysky.ui.api.*        页面/按钮基类（= out/ui-api.jar，插件编译用）
  └─ com.saysky.ui.UiEngine     挂载引擎（定位页面实例、算行、改布局、每帧自愈）
```

- `out/ui-api.jar`（构建时生成）只给插件 **compileOnly** 用，**不要打进插件 jar**；运行时这些类由补丁 dex 提供。
- 插件编译：`javac -cp HotPluginLoader.jar;LoaderSettings/out/ui-api.jar ...`
- `WebCore.addMainMenuButton(...)` 已改为走同一套引擎（主菜单不再有单独的挂载代码）。

## 2. 内置页面（`com.saysky.ui.api.Pages`）

| id | 页面 | 游戏类 | 锚点 | 插入方向 | 布局类型 |
|---|---|---|---|---|---|
| `main` | 主菜单 | `aoc.kingdoms.lukasz.menus.MainMenu` | 加载器行（无则 `LoadGame`） | 下 | `FIT` 面板加高 |
| `settings` | 设置 | `...menus.Settings.Settings_Menu` | `Back` | 下 | `SCROLL` |
| `editor` | 编辑器 | `...menusEditor.Editor` | `Back` | 下 | `SCROLL` |
| `halloffame` | 名人堂 | `...menus.MainMenu_Stats` | `Close` | **上** | `SCROLL` |
| `loadgame` | 载入游戏 | `...menus.Menu_LoadGames_List` | `Back` | 下 | `SCROLL` |
| `campaign` | 战役（竖版） | `...NewGame.Scenarios.Scenarios_Campaign_Vertical` | `Back` | **上** | `FIXED` |
| `campaign_wide` | 战役（横版） | `...Scenarios_Campaign_Horizontal` | `Back` | **上** | `FIXED` |
| `newgame` | 新的游戏 | `...NewGame.NewGame` | `Back` | **上** | `FIXED` |
| `scenarioconfig` | 剧本设置 | `...NewGame.NewGame_Settings` | 第一个元素 | **上** | `SCROLL` |
| `encyclopedia` | 百科全书 | `...menusInGame.InGame_Encyclopedia` | 第一个元素 | 下 | `SCROLL` |
| `scenarios` | 剧本列表 | `...NewGame.Scenarios.Scenarios` | 主列底部 | 下 | `SCROLL` |
| `pause` | 游戏内暂停菜单（Esc，仅存档内存在） | `...menusInGame.InGame_Escape` | 第一个元素（标题条） | 下 | `SCROLL` |

`kind` 含义：

- `KIND_FIT`：内容装得下 → 直接加高**可见面板**（主菜单用的是 `MainMenu` 自己的 `iHeight`，不是全屏基类字段）。
- `KIND_SCROLL`：先尝试加高面板（底部仍在屏幕内时）；否则**延长滚动范围**（`iMaxSliderPositionY`）并按需打开 `scrollableY`。
- `KIND_FIXED`：全屏/地图类页面，只在锚点按钮旁插入（下移锚点及同列元素），不改面板/滚动。

## 3. 按钮基类（规则）

插件**必须**从下面两者之一派生，并实现：

- `String pageId()` —— 内置页面 id 或自定义页面 id
- `String label()` —— 文本按钮显示文字（图标按钮继承默认空串）
- `void onClick()` —— 点击回调（GL 线程）
- 可选：`String tooltip()`、`int height()`（0 = `CFG.BUTTON_HEIGHT`）、`int width()`（0 = 跟随锚点行宽）
- `width() > 锚点行宽` 时宿主会**加宽整个菜单**（同时加宽同列元素）再放行，避免宽文字被裁；`Menu.setWidth` 拒绝时记日志并回退到行宽
- 图标按钮另需：`String icon()` —— 逻辑图标名

```java
static final class SettingsWebButton extends TextButtonSpec {
    private final String pluginId;
    SettingsWebButton(String id) { this.pluginId = id; }

    @Override public String pageId() { return Pages.SETTINGS.id(); }
    @Override public String label()  { return "Web UI"; }
    @Override public void onClick()  { /* 打开网页/弹窗/改数据 */ }
}

static final class EncyclopediaWebIcon extends IconButtonSpec {
    private final String pluginId;
    EncyclopediaWebIcon(String id) { this.pluginId = id; }

    @Override public String pageId() { return Pages.ENCYCLOPEDIA.id(); }
    @Override public String icon()   { return "development"; }
    @Override public void onClick()  { /* ... */ }
}
```

注册（`HotPlugin.init`）：

```java
UiHost.addButton(context.id(), new SettingsWebButton(context.id()));
UiHost.addButton(context.id(), new EncyclopediaWebIcon(context.id()));
context.log("UiHost: " + UiHost.status());
```

- 去重键 = `pluginId | pageId | label | icon`：重复注册只更新文本，不会生成第二个按钮。
- 卸载：`UiHost.removePlugin(pluginId)`（隐藏并停用）。
- 热重载/资源重载后可调 `UiHost.invalidate()` 让引擎重新检查挂载（页面实例重建会自动重挂，无需调用）。

### 图标名

`settings`、`x`、`development`、`encyclopedia`、`technology2`、`world`、`time`、`gold`、`outliner` 等
（对应游戏 `aoc.kingdoms.lukasz.textures.Images` 的同名 `int` 常量；未知名字回退到 `settings`）。

## 4. 自定义页面

页面不必是内置的：派生 `UiPage`（或直接用 `PageSpec`），然后 `UiHost.addPage(...)`。

```java
public final class MyPage extends UiPage {
    @Override public String id()         { return "mypage"; }
    @Override public String className()  { return "aoc.kingdoms.lukasz.menus.XxxMenu"; }
    @Override public int kind()          { return UiPage.KIND_SCROLL; }
    @Override public int anchorMode()    { return UiPage.ANCHOR_TEXT; }
    @Override public String anchorText() { return "Back"; }   // 语言键
}
// init:
UiHost.addPage(new MyPage());
UiHost.addButton(context.id(), new MyButton());
```

锚点模式：`ANCHOR_TEXT`（按语言键找元素）、`ANCHOR_FIRST`、`ANCHOR_LAST`、`ANCHOR_AUTO`（主列最底行）、`ANCHOR_LOADER`（加载器行）。

## 5. 布局保证（宿主算法）

1. 在 `MenuManager.menus` 中按**精确类名**找页面实例（优先当前视图；最多挂 2 个实例）。
2. 解析锚点元素 → 插件行沿用它的 `x / width`（保证和现有按钮同列、在面板内）。
3. 下移锚点之后、且与该行水平重叠的所有元素 `delta = 按钮高 + 2*PADDING`（含 `Empty` 撑高元素；不含插件自己的按钮）。
4. 按 `kind` 更新布局（见第 2 节），并同步 `iMenuElementsSize`、`setIsInView(true)`。
5. 每帧轻量自愈：位置/宽度漂移 → 修复；主菜单若插件行先于加载器行插入 → 自动挪到加载器行下方。
6. 页面实例被游戏重建（如 `menus.get(SETTINGS).set(0, new Settings_Menu())`）→ 新实例自动重挂。

## 6. 自定义页面 + 跳转（v1.1）

插件可以**新建一个原生页面**（由宿主创建真正的游戏 `Menu`：标题 + 关闭 X + 面板 + 原生按钮行），然后在任意按钮里跳转过去。

```java
// 1) 定义页面（行可以是代码 / 图标 / 跳转）
CustomPage page = new CustomPage("mypage", "\u6211\u7684\u9875\u9762")
        .text("\u6253\u5f00\u7f51\u9875", () -> openWeb())
        .icon("development", () -> openWeb())
        .link("\u8bbe\u7f6e", Pages.SETTINGS.id());      // 跳转到内置页

// 2) 注册自定义页
UiHost.addCustomPage(page);

// 3) 在某个页面的按钮里跳转
UiHost.addButton(context.id(), new TextButtonSpec() {
    @Override public String pageId() { return Pages.SETTINGS.id(); }
    @Override public String label()  { return "My Page"; }
    @Override public void onClick()  { UiHost.openPage("mypage"); }
});
```

行为：

- `UiHost.openPage(id)`：自定义页 → 在当前视图最上层创建/复用原生菜单并置顶；内置页 → 反射切到对应 `View`（`MAINMENU / SETTINGS / EDITOR / MAINMENU_STATS / LOAD_GAMES_LIST / NEW_GAME / SCENARIOS / SCENARIOS_CAMPAIGN`）。
- `CustomPage.link(label, targetId)`：目标可以是自定义页或上述内置页；`scenarioconfig`、`encyclopedia` 是子面板，没有独立 `View`，不能作为跳转目标。
- 关闭：点标题栏 X（原生）或 `UiHost.closePage(id)`；再打开会复用同实例并置顶。
- 自定义页也支持 `UiHost.addButton(pluginId, spec)`（`pageId` = 自定义页 id），行会追加在页面末尾并按 `KIND_FIT` 加高页面。
- 面板宽度/高度自动居中，超过屏幕高度时自动变为可滚动（宿主在 `initMenu` 后由原生逻辑计算）。

## 7. 调试

- 日志：logcat 标签 `AOH3UI`，同时追加到 `<外部目录>/hotplugins/ui.log`。
- 关键行：`button registered: ...`、`mounted '...' on settings menu=... anchor=[...] row=x,y wxh`、`panel height ...`、`repair ...`。
- 按钮没出现：看 `page registered` / `addButton: unknown page`；锚点文本找不到时不会挂载（检查该页面语言键/元素是否已创建）。
- 位置不对：`mounted ... anchor=[类名:文本 x,y wxh]` 给出锚点真实矩形，按需换 `anchorMode`/`above`。

## 8. 限制（v1）

- 行内按钮支持文本/图标/跳转三种（`CustomPage` 的 `text/icon/link`）；更高控制力（开关、滑块、嵌入自定义 `MenuElement`）后续版本再扩展。
- 不替换页面类：原版页面绘制/逻辑不变；需要整页自定义时用 `CustomPage` 或 WebUI 弹窗。
- 主菜单行需要等 HotPluginLoader 的「附加包」行出现（最多 1.5 s），否则会与它抢同一行。
- 滚动页插入后若内容超出，按钮可能需要滚动才能看到（这是 `SCROLL` 的预期行为）。
- `openPage` 对内置页只做视图切换；不会替插件设置页内子菜单顺序（依赖原版进入逻辑）。
