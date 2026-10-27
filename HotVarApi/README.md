# HotVarApi —— 给热插件用的「事件触发器」桥

热插件（`hotplugins/` 里的 jar/dex）**不能**改游戏类，所以 `has_variable=...` 这类条件它只能"投喂字符串"：
把自己想为真的字符串写进文明的 `eventsDataVariables` 列表（ZPartyHot 之前的镜像方案），
这带来两个硬限制：阈值必须提前声明、且无法按国家逐个实时求值。

本子工程在补丁 dex 里改掉 3 个触发器方法，让它们**先问热插件**，没人认领再回退原版逻辑：

```
aoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable.outCondition(II)Z
aoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot.outCondition(II)Z
aoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv.outCondition(II)Z
        -> com.saysky.hotvar.HotVars.has(int civID, String var)
        -> com.saysky.hotvar.HotVars.hasCivTag(String civTag, String var)
```

于是事件文本里可以写任意表达式：

```
has_variable=zparty:support:mon:gt:0.50
has_variable=zparty:ruling:mon
has_variable_not=zparty:ruling:mon
has_variable_civ=ger=zparty:support:mon:ge:0.25
```

**效果（outcome）不需要本补丁**：`add_variable=xxx` 本来就会写进文明变量表，热插件轮询后自行执行即可（ZPartyHot 就是这么做的），且随存档保存。

## 1. 对热插件暴露的 API

```java
com.saysky.hotvar.HotVars
    interface Provider { boolean test(String var, int civID); }
    static void register(String prefix, Object handler)   // 见下：也可传普通对象
    static void unregister(String prefix)                 // null = 清空
    static String prefixes()                              // 诊断用
    static boolean has(int civID, String var)             // 供补丁后的触发器调用
    static boolean hasCivTag(String civTag, String var)
    static Boolean eval(int civID, String var)            // null = 没有插件认领
```

- `handler` 可以是实现了 `Provider` 的对象，也可以是**任意**带 `boolean test(String,int)` 方法的对象
  （反射调用，方法查找只做一次）。推荐用第二种：热插件不需要任何编译依赖。
- 前缀匹配是 `startsWith`，**长前缀优先**；命中即返回，不再看原版变量表。
- 插件抛异常 / 返回非布尔 → 记一条 log 并**回退原版行为**（不会因为插件 bug 让事件系统崩掉）。

### 热插件里怎么调（零编译依赖）

```java
try {
    Class<?> hv = Class.forName("com.saysky.hotvar.HotVars");
    hv.getMethod("register", String.class, Object.class).invoke(null, "myplugin:", this);
} catch (Throwable t) {
    // 没装补丁：退回"自己往 eventsDataVariables 里镜像字符串"的老办法
}

/** HotVars 会反射调用这个方法 */
public boolean test(String var, int civID) {
    // var 是完整字符串（含前缀），例如 "myplugin:gold:gt:100"
    return ...;
}
```

## 2. 性能

| 情况 | 开销 |
|---|---|
| 没有热插件注册（绝大多数玩家） | 一次 `volatile` 读数组 + 长度判断，≈ 0 |
| 有插件注册 | 每个触发器字符串做 `startsWith`（前缀数通常 1~3 个），命中后回调插件自身 |
| 插件报错 | 记日志一次并回退原版 |

`has_variable` 在事件/任务判定里调用很频繁（后期大局面每回合上万次），所以 `HotVars` 内部**不做正则、不做 split、不加锁**（注册路径 `synchronized`，求值路径无锁）。

## 3. 构建

`tools\merge.ps1` 第 14 段自动调用 `HotVarApi\tools\apply-patch.ps1`：

1. 若 `final-smali` 里没有这 3 个类（它们既不在 `pack-smali` 也不在 `final-smali`），
   用 baksmali 从目标包 dex 里按需抽出（和 ArmyVoice 子工程同一套 `Ensure-Class` 逻辑）；
2. 用 `tools\smali-hook.ps1` 的 `Add-HeadHook` 在原方法**头部注入 8~9 条指令**（fall-through：
   `HotVars.eval(...)` 返回 `null` ⇒ 落空，原版本体照旧执行）；**不替换方法体**，
   因此整合包/原生 APK 各自的本体（含包内独有类）都原样保留（幂等：已含 `Lcom/saysky/hotvar/HotVars;->` 就跳过）；
3. Java 侧 `java\src\com\saysky\hotvar\HotVars.java` 由 `tools\build-java.ps1` 自动编译进补丁 dex。

验证：

```
out\classes.dex 里应能搜到 Lcom/saysky/hotvar/HotVars;
final-smali\aoc\kingdoms\lukasz\events\triggers\EventTrigger_HasVariable.smali 里应能搜到 HotVars
```

## 4. 已知限制

- 只桥接了 `has_variable` / `has_variable_not` / `has_variable_civ` 三种条件；
  事件**效果**（`add_variable`）无需桥接。
- 事件 UI 的悬停说明 (`getText2()`) 仍走 `Game.lang.get(value)`，自定义字符串会原样显示成 key
  （只影响提示文字，不影响判定）。
- 与 RainfallEvent 等自带事件系统的 mod 共存时，只影响原版事件/任务触发器的这 3 个方法。
