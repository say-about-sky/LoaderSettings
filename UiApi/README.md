# UiApi —— 标准化 UI 基类与自动布局

`LoaderSettings` 的子项目：把游戏里主要页面（主菜单 / 设置 / 编辑器 / 名人堂 / 载入游戏 / 战役 /
新游戏 / 剧本设置 / 百科全书 …）抽象成**标准基类**，热插件只能派生、不能乱插，插入后由宿主
**自动更新页面布局**（拉高面板 / 扩展滚动范围 / 平移同行元素）。

- 源码：`LoaderSettings\java\src\com\saysky\ui\api\`（公开基类）+ `java\src\com\saysky\ui\UiHost.java`（门面）
- 宿主实现：`java\src\com\saysky\ui\UiEngine.java`、`CustomMenu.java`、`UiIcons.java`、`UiLog.java`（不导出）
- 插件编译用：`LoaderSettings\out\ui-api.jar` 内的 `com/saysky/ui/api/*` + `com/saysky/ui/UiHost.class`
- 详细字段/行为说明见 `LoaderSettings\UI-API.md`

## 1. 公开类型

| 类型 | 作用 |
|---|---|
| `UiPage` | 页面基类：`id / className / kind(FIT/SCROLL/FIXED) / anchorMode / anchorText / above / viewName` |
| `PageSpec` | 具体页面描述（`PageSpec.fit/scroll/fixed(...)`、`.withView("SETTINGS")`） |
| `Pages` | 12 个内置页面常量：`MAIN_MENU / SETTINGS / EDITOR / HALL_OF_FAME / LOAD_GAME / CAMPAIGN(_HORIZONTAL) / NEW_GAME / SCENARIO_SETUP / ENCYCLOPEDIA / SCENARIOS / PAUSE`（`PAUSE`=游戏内 Esc 菜单，仅存档内存在） |
| `TextButtonSpec` | 文字按钮基类：`pageId() / label() / onClick() / tooltip() / height() / width()`（`width`>行宽时宿主加宽菜单） |
| `IconButtonSpec` | 图标按钮基类，额外 `icon()`（`Images` 逻辑名） |
| `CustomPage` | 插件自有页面：`.text(label, Runnable[, height]) / .icon(icon, Runnable) / .link(label, targetPageId)` |
| `UiHost` | 唯一入口：`addPage / addCustomPage / openPage / closePage / addButton / removePlugin / invalidate / status / tick` |

## 2. 写法

```java
// 在某个内置页面加一行（位置/宽度自动跟随该页面的按钮行，面板自动变高或滚动范围自动变大）
UiHost.addButton(ctx.id(), new TextButtonSpec() {
    public String pageId()  { return Pages.MAIN_MENU.id(); }
    public String label()   { return "Web UI"; }
    public void   onClick() { UiHost.openPage("my.page"); }
});

// 插件自有页面（宿主用原生 Menu 造页面，标题栏自带关闭 X）
UiHost.addCustomPage(new CustomPage("my.page", "My Page")
    .text("打开网页", () -> openWeb())
    .link("返回设置", Pages.SETTINGS.id()));
```

规则：

- **必须派生** `TextButtonSpec` / `IconButtonSpec`，不要自己往 `Menu.menuElements` 里塞元素；
- 页面挂载、同行平移、面板拉高、滚动范围扩展、菜单重建后的重新挂载都由宿主负责；
- 按钮追加后宿主会维持 `iMenuElementsSize` / `isInView`，不要在插件里自己改这些字段。

## 3. 与 GameApi 的关系

两者都在同一个 `ui-api.jar` 里，互相独立：

```java
UiHost.addButton(pid, new TextButtonSpec() { ... });   // com.saysky.ui.api
GameApi.console("gold 100");                            // com.saysky.game
```

`LoaderSettings\UI-API.md` 是详细手册（含每个内置页面的锚点/布局语义），本文件是子项目索引。
