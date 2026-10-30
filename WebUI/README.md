# WebUI 子工程（LoaderSettings）

给热插件用的 WebView/JavaScript 扩展层。v1 已实现：

| 能力 | 说明 |
|---|---|
| 主菜单按钮注入 | 热插件调用 `WebCore.addMainMenuButton(...)`，自动插入真实 `MainMenu`（不 Mixin、不改主菜单类） |
| 原生弹窗框架 | 新建游戏原生 `Menu`（标题栏 + 引擎的 X 关闭按钮），WebView 精确覆盖内容区 |
| 页面/JS 执行 | 系统 WebView（Android 8+），无地址栏、无浏览器框架 |
| 多弹窗/多页面 | 每个 `pluginId+entry(+矩形)` 一个会话；默认层叠偏移，也可显式指定矩形；最多同时 3 个可见弹窗 |
| 引擎复用/回收 | 关闭后 WebView 进空闲池（最多 1 个热实例）；`onTrimMemory/onLowMemory` 时销毁空闲实例并清缓存；Activity 重建时整体释放重建 |
| 插件缓存（新） | **严格限定在插件自己的 resources 目录**：`<plugin resources>/cache/`；Java `WebCache` + JS `AOHCache`；支持元素/数据缓存与 URL 响应缓存（`shouldInterceptRequest` 离线命中） |
| JS → 游戏 | `window.AOH3.toast(...)` → 游戏底部原生 Toast |
| 控制台接口 | `InGame_Console.execute` **头部注入**（只加 5 条指令，原版本体不动）：`WebConsole.handle` 返回 true ⇒ 提前 return，false ⇒ 原版命令引擎照常跑；支持 `web help/open/reload/close/status` |
| JS 文件监听/热更新 | 监听插件 `web/` 目录，文件变化后约 0.6s 自动 `reload()` 页面 |
| 热插件零编译依赖 | 通过 `Class.forName("com.saysky.web.WebCore")` 反射调用 |

## 构建

```powershell
.\LoaderSettings\build-dex.bat
```

产物：`LoaderSettings\out\classes.dex`（前置进 APK，冷启动生效）。
`tools\build-java.ps1` 的 javac classpath 已加入 `platforms\android-34\android.jar`
（WebView 代码需要；D8 侧原本就有 `--lib android.jar`）。

## 对热插件的接口（反射）

```java
Class<?> web = Class.forName("com.saysky.web.WebCore");

// 1) 注册插件页面目录（必须在 addMainMenuButton 之前）
web.getMethod("registerPlugin", String.class, String.class, String.class)
   .invoke(null, pluginId, webDir.getAbsolutePath(), "index.html");

// 2) 在主菜单插入一个原生按钮；点击打开原生框架 + WebView
web.getMethod("addMainMenuButton", String.class, String.class, String.class, String.class)
   .invoke(null, pluginId, "Web UI", "index.html", "Web UI Demo");
```

其它公开静态方法：

```text
openDialog(String pluginId, String entry, String title)
openDialogAt(String pluginId, String entry, String title, int x, int y, int width, int height)
closeDialog()                  // 关闭最上层弹窗
reload(String pluginId)        // null = 所有会话
toast(String message)
status() / version() / lastError()
```

### 多窗口

- 同一个 `pluginId + entry`：再次打开 = 复用并置顶（默认位置会按打开顺序层叠偏移）。
- `openDialogAt(...)`：显式矩形（游戏坐标），相同插件/页面但不同矩形 = **独立会话**（独立 WebView），
  可以左右并排多个页面；`x < 0` 或 `w/h <= 0` 表示自动。
- 最多 `MAX_OPEN_SESSIONS = 3` 个可见弹窗；超出时自动关闭最久未用的那个。
- 自动层叠的弹窗会互相重叠（当前窗口的标题栏可能被下方 WebView 盖住）；**需要同屏多个窗口时用 `openDialogAt` 给互不重叠的矩形**（示例插件已按左右并排演示）。
- 关闭后的会话保留菜单对象（隐藏状态），重开秒开；超过 `MAX_KEPT_SESSIONS = 8` 时丢弃最旧记录。
- JS 侧 `AOH3.close()/reload()` 只作用于**当前 WebView 所属会话**，不会误关其他弹窗。
- 状态日志：`hotplugins/webui.log` 中 `openDialog ... view=... rect=...`、`openDialog: reuse ...`、`dialog closed: key`。

## JS 接口（`window.AOH3`）

```js
AOH3.toast('Clicked: 1');   // 游戏底部原生 Toast
AOH3.log('hello');          // 输出到 logcat: AOH3Web
AOH3.close();               // 关闭当前弹窗
AOH3.reload();              // 重载当前页面
AOH3.status();
AOH3.version();
AOH3.session();             // 当前弹窗会话 key

// 游戏运行时（需要已读档；否则返回 rejected: no active save，什么都不会执行）
AOH3.gameStatus();          // inGame=true civ=GER(id=12) gold=1234 ... events=c/s/g/sc/ssc/gsc
AOH3.game('gold 100');      // 交给原版控制台 InGame_Console.execute（GL 线程执行）

// —— 普通事件 event 目录（原版 game/events + 当前剧本 + 本插件 resources/event）——
AOH3.event('event_demo.1');                          // 全局：所有可能的 event 目录里按 id 查找 → 载入 → 触发
AOH3.findEvent('event_demo.1', '<game>/assets/game/events');  // 只在给定 path 下的 event 目录里找

// —— 任务事件 MissionsEvent 目录 ——
AOH3.missionsEvent('J9MIad');                        // 全局：所有可能的 MissionsEvent 目录 → 载入 → 触发
AOH3.findMissionsEvent('J9MIad', '<game>/assets/game/missions/missionsEvents');
AOH3.findMissionsEvent('J9MIad', '<game>/assets/map/Earth3/scenarios/TheGreatWar');
AOH3.loadExtraEvents();                              // 可选：批量扫描并注册上面所有附加目录
```

- **`path` 支持 `<game>` 前缀**：显式声明「这是游戏内部资源目录」，按游戏根/APK 真实布局书写，
  `<game>/assets/game/events` 会被归一化成 `game/events`（去掉 `<game>` 与前导 `assets/`）。
  不写前缀时按资源内路径理解（`game/events`、`map/<地图>/scenarios/<剧本>`），也接受单个 `.txt`。
- 四个事件接口都是「查找定位 → 载入（注册进原版事件表）→ 触发」，**都不抛异常**：
  未读档 `rejected: no active save`；找不到 `rejected: not found '<id>' under <path>`
  （附归一化结果，如 `<game>/assets/game/events -> game/events`）。
- 全局搜索的目录集合（缺失就跳过，不会报错）：
  `event(id)` = `game/events{,/common,/siege,/global}/` + `map/<地图>/scenarios/<剧本>/events/**` + 插件 `resources/event/`；
  `missionsEvent(id)` = `game/missions/missionsEvents/` + `.../missions/missionsEvents/` + 插件 `resources/missions/missionsEvents/`；
  地图/剧本用运行时 `Game.map.getFile_ActiveMap_Path()` + `EventsManager.loadScenarioEventsTag` 计算。
- 注册用官方解析器 `EventsManager.loadEvent(0, lines)`（与 `game/events/**` 同一套）；缺 `trigger_` 的会自动补
  恒真触发器，缺 `option_btn` 的直接拒绝；同一 `id=` 重复载入会跳过。
- 注册进表的这些事件**不参与每回合自动扫描**（不改 `iEventsSize`），只能用上面的接口显式触发。

- `AOH3.game(...)` 走的是**原版命令解释器**，所以命令名/数值都由 `GameValues` 的 `CONSOLE_COMMAND_*` 决定（`gold/legacy/manpower/diplomacy/advantage/nuke/killruler/explode` 之类），不是我们自造的语法。
  原版**没有参数解析**（`gold` 永远只加固定 500）；补丁的钩子接管了数值参数，`gold 100` / `gold=100` 都精确生效，游戏内手打控制台同理。
- 所有调用都是"投递"语义：立即返回 `queued(...)`，真正的效果在下一帧的游戏线程里执行；要确认结果就用 `AOH3.gameStatus()` 读金币等字段。
- 触发事件成功时会自动关闭当前 Web 弹窗并退出暂停菜单，让原生事件窗可见。
- 未进入存档（主菜单/编辑器）时一律拒绝，不会残留待执行命令。
```

## 缓存接口（`window.AOHCache`，插件自主选择）

每个 WebView 都会注入 `AOHCache`，只作用于**当前会话所属插件**；文件全部落在
`<plugin resources>/cache/`（即 `web/` 的同级目录），键可以是任意字符串（`:`、中文、`#` 都可以），
内部按 UTF-8 百分号编码成文件系统安全路径（`demo:counter` → `kv/demo%3Acounter`），
只拒绝 `..` 穿路径，并做规范路径前缀校验（防逃逸）；单条 ≤512KB、每插件 ≤4MB。
并对 Symlink 逃逸做 canonical 检查。

```js
AOHCache.enabled();                        // 当前是否允许写入（默认 true）
AOHCache.setEnabled(false);                // JS 决定：关闭后 put/putUrl 被拒绝（get 仍可读）
                                           // 选择会写进 <plugin resources>/webui.json，重启/重开页面后仍是关
AOHCache.put('demo:counter', '3');         // 元素/数据缓存（≤ 512KB/条，永不过期）
AOHCache.putTtl('demo:counter', '3', 600); // 带 TTL（秒）：到期后 get/has 当成不存在
AOHCache.has('demo:counter');              // true/false（已过期视为 false）
AOHCache.keys();                           // 逻辑键列表（每行一个）
var v = AOHCache.get('demo:counter');
AOHCache.remove('demo:counter');
AOHCache.clear();
AOHCache.list();                           // 相对路径列表（每行一个）
AOHCache.stats();                          // enabled/files/bytes/maxBytes/dir
AOHCache.putUrl('https://x/y.json', 'application/json', '{"ok":1}');
AOHCache.putUrlTtl('https://x/y.json', 'application/json', '{"ok":1}', 600);
AOHCache.getUrl('https://x/y.json');        // JS 直接读回缓存内容（null = 未缓存/已过期）
```

URL 缓存走 `WebViewClient.shouldInterceptRequest`：页面 `fetch/http(s)` 请求命中缓存时直接返回本地文件
（带 `Access-Control-Allow-Origin: *`，`file://` 页面也能离线读取），不命中则走正常网络。
HTTP 层本身仍由 `LOAD_DEFAULT` 处理标准 `Cache-Control/ETag`；本插件缓存是额外的离线/元素层。

限制：单条 512KB、每插件 4MB，超出按最旧 mtime 逐出；`.tmp` 原子写入。

Java 侧（反射调用，无需编译依赖）：

```java
Class<?> wc = Class.forName("com.saysky.web.WebCache");
wc.getMethod("put", String.class, String.class, String.class)
  .invoke(null, pluginId, "java:key", "value");
wc.getMethod("putUrl", String.class, String.class, String.class, String.class)
  .invoke(null, pluginId, "https://x/y.json", "application/json", json);
wc.getMethod("setEnabled", String.class, boolean.class).invoke(null, pluginId, false);
String stats = (String) wc.getMethod("stats", String.class).invoke(null, pluginId);
```

## 控制台

游戏内打开控制台（宫廷 → 更多 → 控制台）后输入：

```text
web help
web open com.saysky.webdemo index.html "Web UI Demo"
web reload com.saysky.webdemo
web close
web status
```

## 调试

```powershell
adb logcat -s AOH3Web
```

- `android: glView=...`：找到 GLSurfaceView。
- `main menu button mounted`：主菜单按钮已插入。
- `openDialog ... rect=...`：原生弹窗几何。
- `loadUrl file://...` / `pageFinished ...`：WebView 加载。
- `files changed: ...` / `reload page`：热更新生效。

## 已知限制（v1）

- 仅 Android（LoaderSettings 本身就是纯 dex 补丁；桌面没有 WebView）。
- 弹窗只适用于主菜单视图（从主菜单按钮进入）；`web open` 在游戏内不会切视图。
- 非模态：弹窗内容区外的点击仍会落到主菜单；原生 X 可直接关闭。
- WebView 始终在 GL 画面之上；若游戏原生弹窗盖在 Web 页上，会被 WebView 遮住。
- 未处理 Activity 重建/进程重启后的 WebView 复用；冷启动最稳。
