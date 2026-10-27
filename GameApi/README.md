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

// —— 普通事件（原版事件表）——
String  GameApi.event(String eventId, File file);          // file 可空；id 未知且给了文件则先解析注册再触发
String  GameApi.findEvent(String eventId);                  // "events(index=12): J_xxx" / "not found: ...（searched N）"

// —— 任务事件（附加事件目录）——
String  GameApi.missionsEvent(String id, String assetPath); // assetPath 可空（空则按 id 自动定位）
String  GameApi.findMissionsEvent(String id);               // 返回匹配的 asset 路径（可多条）

// —— 兼容/辅助 ——
String  GameApi.event(String eventId);              // = event(id, null)
String  GameApi.loadEventFile(File file);           // 只注册不触发
String  GameApi.loadEventFile(File baseDir, String relPath);
String  GameApi.loadEventText(String[] lines, String label);
String  GameApi.loadExtraEvents();                  // 批量扫描附加目录
String  GameApi.findEvents(String query);           // 六表摘要 / 子串搜索
boolean GameApi.hasEvent(String eventId);
String  GameApi.VERSION;                            // "1.1.0"
```

返回值统一是 `queued(...)` 或 `rejected: ...`：
真正执行在 **GL 线程**（`Gdx.app.postRunnable`），所以调用立即返回，效果在下一帧生效。
`console` / `event` / `missionsEvent` 在**未读档**时一律 `rejected: no active save`；`loadEventFile*` / `find*` 与游戏状态无关，随时可调。

### 任务事件目录（`missionsEvent` / `findMissionsEvent` / `loadExtraEvents` 共用）

```
game/missions/missionsEvents/
map/<地图>/scenarios/<剧本>/events/
map/<地图>/scenarios/<剧本>/events/common|siege|global/
map/<地图>/scenarios/<剧本>/missions/missionsEvents/
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

    // 2) 普通事件：先给路径，id 不在表里时会自动加载
    GameApi.event("event_demo.1", new File(ctx.dataDir(), "event/event_demo.txt"));
    ctx.log(GameApi.findEvent("event_demo.1"));

    // 3) 任务事件（missionsEvents / 剧本 events）
    GameApi.missionsEvent("J9MIad",
            "game/missions/missionsEvents/administrative_buildings.txt");
    ctx.log(GameApi.findMissionsEvent("J9MIad"));

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
