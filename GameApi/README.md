# GameApi —— 游戏运行时接口（控制台 / 事件）

`LoaderSettings` 的子项目：把「**向原版控制台发命令**」「**触发 txt 事件**」「**从插件 resources 载入事件文件**」
做成**与 Web 无关的纯 Java API**，任何热插件（用不用 WebView 都行）都可以直接调用。

- 源码：`LoaderSettings\java\src\com\saysky\game\GameApi.java`（打进补丁 dex）
- 插件编译用：`LoaderSettings\out\ui-api.jar` 内的 `com/saysky/game/GameApi.class`
  （`ui-api.jar` = `com/saysky/ui/api/*` + `com/saysky/ui/UiHost` + `com/saysky/game/GameApi`）
- 运行期由补丁 dex 提供实现，插件**不要**把 jar 里的类打进自己的包（`compileOnly`）

## 1. 接口

```java
package com.saysky.game;

boolean GameApi.inGame();                          // 是否已载入存档（player 文明存在）
String  GameApi.status();                          // "inGame=true civ=GER(id=12) gold=1234 ... events=c/s/g/sc/ssc/gsc"
String  GameApi.console(String command);           // -> InGame_Console.execute（"gold 100" / "gold=100" 都行）

// —— 普通事件 event 目录（原版 game/events + 当前剧本 + 插件 resources/event）——
String  GameApi.event(String eventId);                      // 全局：所有可能的 event 目录里按 id 查找 → 载入 → 触发
String  GameApi.event(String eventId, File pluginResDir);   // 同上，额外搜 <pluginResDir>/event/
String  GameApi.findEvent(String eventId, String path);     // 只在 path 下的 event 目录里找

// —— 任务事件 MissionsEvent 目录 ——
String  GameApi.missionsEvent(String eventId);              // 全局：所有可能的 MissionsEvent 目录 → 载入 → 触发
String  GameApi.missionsEvent(String eventId, File dir);    // 同上，额外搜 <dir>/missions/missionsEvents/
String  GameApi.findMissionsEvent(String eventId, String path); // 只在 path 下的 MissionsEvent 目录里找

// —— 兼容/辅助 ——
String  GameApi.loadEventFile(File file);           // 只注册不触发
String  GameApi.loadEventFile(File baseDir, String relPath);
String  GameApi.loadEventText(String[] lines, String label);
String  GameApi.loadExtraEvents();                  // 批量扫描附加目录
String  GameApi.findEvents(String query);           // 六表摘要 / 子串搜索
boolean GameApi.hasEvent(String eventId);
String  GameApi.VERSION;                            // "1.2.1"
```

### `path` 前缀 `<game>`（显式声明游戏内部资源目录）

`findEvent` / `findMissionsEvent` 的 `path` 支持用 `<game>` 前缀，按**游戏根/APK 的真实布局**书写：

| 写法 | 归一化为 |
|---|---|
| `<game>/assets/game/events` | `game/events` |
| `<game>/assets/game/events/common` | `game/events/common` |
| `<game>/assets/game/missions/missionsEvents` | `game/missions/missionsEvents` |
| `<game>/assets/map/Earth3/scenarios/TheGreatWar` | `map/Earth3/scenarios/TheGreatWar` |

规则：去掉 `<game>` → 去掉前导 `assets/`（APK 内资源根）→ 得到资源内路径（与 `Event.txt` 里引用资源的写法一致）。
不写前缀时，`path` 直接按资源内路径理解（`game/events`、`map/<地图>/scenarios/<剧本>`）；
也接受单个 `.txt` 文件路径。归一化函数是公开的：`GameApi.normalizePath(path)`。
`path` 为空/只有 `<game>` 时，退化为该 kind 的全局目录集合。

### 错误处理

四个接口都**不抛异常**：未读档 → `rejected: no active save`；找不到 → `rejected: not found '<id>' under <path>`
（`<path>` 会附上归一化结果，如 `<game>/assets/game/events -> game/events`）；解析失败只写日志与控制台。

返回值统一是 `queued(...)` 或 `rejected: ...`：
真正执行在 **GL 线程**（`Gdx.app.postRunnable`），所以调用立即返回，效果在下一帧生效。
`console` / `event` / `missionsEvent` 在**未读档**时一律 `rejected: no active save`；`loadEventFile*` / `findEvents` 与游戏状态无关，随时可调。

### 全局搜索的目录集合（`event(id)` / `missionsEvent(id)`）

```
event(id)：
  game/events/  game/events/common/  game/events/siege/  game/events/global/
  map/<地图>/scenarios/<剧本>/events{,/common,/siege,/global}/
  <插件 resources>/event/

missionsEvent(id)：
  game/missions/missionsEvents/
  map/<地图>/scenarios/<剧本>/missions/missionsEvents/
  <插件 resources>/missions/missionsEvents/
```

地图/剧本路径用运行时的 `Game.map.getFile_ActiveMap_Path()` + `EventsManager.loadScenarioEventsTag` 计算；
目录不存在就跳过，文件不是事件格式（没有 `id=`）也跳过，不抛异常。
每个注册成功的文件都会在控制台/日志里输出 `event loaded: <path> (<id>)`。

## 2. 插件里的写法（热插件，编译期 compileOnly）

```java
import com.saysky.game.GameApi;

public void init(HotContext ctx) {
    // 1) 控制台
    GameApi.console("gold 100");

    // 2) 普通事件：全局按 id 查找（含本插件 resources/event）
    GameApi.event("event_demo.1");

    //    只在本插件 resources/event 里找
    GameApi.findEvent("event_demo.1", new File(ctx.dataDir(), "event").getAbsolutePath());

    //    或者用 <game> 显式指向游戏内部资源目录
    GameApi.findEvent("J_battle", "<game>/assets/game/events");

    // 3) 任务事件：全局 / 指定目录
    GameApi.missionsEvent("J9MIad");
    GameApi.findMissionsEvent("J9MIad", "<game>/assets/game/missions/missionsEvents");
    GameApi.findMissionsEvent("J9MIad", "<game>/assets/map/Earth3/scenarios/TheGreatWar");

    // 4) 状态
    if (GameApi.inGame()) {
        ctx.log(GameApi.status());
    }
}
```


事件文件语法与官方 `game/events/common/*.txt` **完全一致**（同一套 `EventsManager.loadEvent` 解析器）：

```
id=event_demo.1
title=Hot Plugin Event Demo
desc=Loaded by GameApi.loadEventFile(..)

only_once=false

option_btn
name=OK (+100 gold)
ai=100
gold=100
option_end
```

要点：

- 载入的事件**不进入** `EventsManager.iEventsSize`，因此**不会**被每回合自动扫描/自动弹窗，
  只能通过 `GameApi.event(id)` 显式触发（避免与原版回合调度冲突）。
- 同一个 `id=` 已注册时自动跳过，热重载不会叠加重复事件。
- 事件对象直接进原版六张表（按 `{scenario, common, globalScenario, global, siegeScenario, siege}` 顺序查 id）。

## 3. 实现细节（维护者看）

- 触发事件 = 原版类组合，跨包通用：
  `EventsManager.updateRandomProvinceID(civ)` → `Event.runPreprocessor(civ)` →
  `Game.player.addActiveEvent(type, index, 0)` → `MenuManager.rebuildInGame_Right()` +
  `getVisibleInGame_Event()/rebuildInGame_Event(e, type, index)` + `SoundsManager.EVENT_INFO/EVENT`。
- 控制台就是原版 `InGame_Console.execute`，补丁只在方法头插了 `web ...` 钩子，本体未改。
  ⚠ **原版控制台根本没有参数解析**：`gold` 分支只会加固定值 `CONSOLE_GOLD`（实机 500），`gold=100` / `gold 100`
  在原版下都会落到无参分支（这就是“怎么改都是 +500”的原因）。
  现在由补丁的头部钩子（`com.saysky.web.WebConsole`）接管**数值参数**：`gold/legacy/manpower/diplomacy/advantage`
  支持 `cmd=VALUE` 和 `cmd VALUE` 两种写法（精确加减，负数也支持），带参时不会走原版无参分支；
  **游戏内手打控制台**与 `GameApi.console` / `AOH3.game` 走同一入口，行为一致；无参仍由原版处理（+默认值）。
- 新增/修改这里的方法时，`java\stubs` 里的签名必须与包内真实类一致（桩不进 dex）。

## 4. Web 层关系

`com.saysky.web.WebGame` 只是**薄适配**：`AOH3.game/event/eventFile/gameStatus` 全部转调 `GameApi`，
额外的只有“把相对路径解析到本插件 resources 目录”。以后加新的运行时能力，写在 `GameApi`，
Web 侧一行转发即可。
