# ArmyVoice —— 兵牌点击语音优先级子项目

把整合包自带的 `ArmyClickSoundManager`(只在安卓整合包 dex 里)替换为 `com.saysky.armyvoice.ArmyVoice`,
并按新的四级优先级挑选语音,用于**点击兵牌选中部队**时的音效。

## 一、优先级

点中兵牌后,`ArmyVoice.playForCiv(civID)` 按顺序查找第一个"非空"的目录,随机播一条:

| 顺序 | 目录 | 依据 |
|---|---|---|
| 1 | `audio/sfx/army_click/<civTag>/` | `Civilization.getCivTag()`,再试 `realTag`(大小写自动回退 raw → lower → upper) |
| 2 | `audio/sfx/army_religions/<宗教名>/` | `Civilization.getReligionID()` → `game/Religions.json` 的原始 `Name`;名字目录不存在则试**索引** |
| 3 | `audio/sfx/army_culture/<文化组名>/` | `Civilization.iGroupID` → `game/groups/civsGroups.txt` 的组名;名字目录不存在则试**索引** |
| 4 | `audio/sfx/army_default/` | 通用兜底 |
| 5 | `audio/sfx/army_click/default/`、`audio/sfx/army_click/common/` | 旧版目录,兼容保留 |
| 6 | 原版 | `SoundsManager.playSelectedArmy()` |

细节:

- 每个目录内部固定为 `0.ogg`、`1.ogg` …… **必须从 0 连续编号**,遇到第一个缺失即停止(与原作者逻辑一致)。
- 上限 `ArmyVoice.MAX_SOUNDS = 10`,即每个目录最多 10 条。
- 120 ms 节流,防止连点刷音(与原实现相同)。
- 目录/文件名大小写:自动尝试原样、小写、大写。
- 宗教/文化组名若含非 ASCII 字符(例如 `日耳曼`),导入脚本会改用**数字索引目录**(如 `army_religions/32/`),Java 侧的名字查找失败后自动回退索引,两边都能命中。

## 二、目录示例

```
assets/audio/sfx/
├─ army_click/
│  ├─ ger/0.ogg … 9.ogg          ← 国家 tag,最高优先
│  ├─ chi/…
│  ├─ default/…                  ← 旧版兜底
│  └─ common/…                   ← 旧版兜底(可选)
├─ army_religions/
│  ├─ Catholic/0.ogg … 9.ogg     ← 宗教名
│  └─ 32/0.ogg …                 ← 非 ASCII 名字改索引
├─ army_culture/
│  ├─ European/0.ogg … 9.ogg     ← 文化组名
│  └─ Japanese/…
└─ army_default/
   └─ 0.ogg … 4.ogg
```

## 三、实现位置

| 文件 | 作用 |
|---|---|
| `LoaderSettings/java/src/com/saysky/armyvoice/ArmyVoice.java` | 全部查找/缓存/播放逻辑(新增类,进补丁 dex) |
| `LoaderSettings/ArmyVoice/patches/ArmyClickSoundManager__playForCiv.smali` | 替换 `playForCiv(I)V` 方法体为单条 `invoke-static` 转发 |
| `LoaderSettings/ArmyVoice/tools/apply-patch.ps1` | 从目标包 dex 按需 baksmali 出 `ArmyClickSoundManager`,替换方法块(幂等) |
| `LoaderSettings/tools/merge.ps1` | 第 13 段自动调用上面的 apply-patch |
| `LoaderSettings/ArmyVoice/tools/import-hoi4-voices.ps1` | 从 HOI4 移植语音并转 OGG,生成四级目录 |

`ArmyClickSoundManager` 只存在于安卓整合包 dex(PC 版 `game.jar` 没有该类),无法走 loader 的 Mixin 通路,
所以采用"补丁 dex 类整类前置 + 方法体转发"的既有做法;其余代码全部在 Java 里,符合 LoaderSettings 维护约定。

## 四、构建

```bat
cd <游戏根>\LoaderSettings
build-dex.bat
```

产物:`LoaderSettings\out\classes.dex`。本工程不提供自动部署脚本，自行把该 dex 前置合并进 APK 后重打包 + 签名，冷启动生效。

## 五、从 HOI4 导入语音

脚本扫描 `-Hoi4Dir`(或 `HOI4_DIR` 环境变量)下的 `dlc\*\sound\<tag>\*.wav` 与 `integrated_dlc` 下的同名结构
(HOI4 的将军语音:idle / neutral / positive / retreat),用 ffmpeg 转 OGG Vorbis(单声道 44.1 kHz,`-q:a 4`)。

```powershell
cd <游戏根>\LoaderSettings\ArmyVoice\tools

# 只看计划
.\import-hoi4-voices.ps1 -DryRun

# 合并模式(默认):已存在的文件保留,只补缺失编号
.\import-hoi4-voices.ps1

# 重建:覆盖已有文件
.\import-hoi4-voices.ps1 -Rebuild

# 自定义每目录条数 / 源目录 / 目标包
.\import-hoi4-voices.ps1 -PerFolder 8 -Hoi4Dir "<HOI4 安装目录>" -AssetsDir "...\assets"
```

脚本行为:

1. 读取 `assets/game/civilizations/*.json` 的 `Tag` / `ReligionID` / `GroupID`,建立国家 → 宗教 / 文化组映射;
2. 只为"目标包里真实存在的国家 tag"生成 `army_click/<tag>/(0..N-1).ogg`;
3. 按宗教、文化组把成员国家的语音合并成池,各取最多 `N` 条生成 `army_religions/*`、`army_culture/*`;
4. `army_default` 由现有 `army_click/default` 的 5 条重新转码;若不存在则从全部语音池抽样。

取样按 `idle → neutral → positive → retreat → other` 轮转,保证四类台词都能覆盖到。

## 六、验证

- 真机:`adb logcat` 无异常即可;点击兵牌应听到对应层级语音。
- 若某国家没有专属目录,会自动落到宗教 → 文化 → 默认,不会静音(最终回退原版音效)。
- 资源改动只需重启游戏,不需要重新编译 dex。

## 七、外部资源热更新（只由「全部重载」触发）

设计目标：**正常游戏时零额外开销**，只有附加包面板的「全部重载」才会让语音资源刷新。

工作链路：

```
面板「全部重载」
  → HotPluginHost.reloadAll()
  → ColdBootstrap.rescanResources()          重扫 resources/<包名>/override/ 索引
  → 反射调用 ArmyVoice.invalidate()          只推进 GENERATION++（不扫描、不清表、不加载音频）
  → 下次点击某国兵牌
  → load() 发现该目录代际落后 → 仅重建这一个目录
```

- `playForCiv` 平时只多一次 `volatile int` 读（纳秒级），没有任何周期性磁盘扫描/反射。
- 只有**被点到过的国家目录**才会重建；没点到的目录完全零成本。
- 重建预算 `MAX_RELOADS = 32`：`SoundsManager.lSounds` 只增不减、无法安全回收，预算用完后沿用旧列表，避免反复重载把内存撑大。
- 未安装宿主（没有 `ColdBootstrap`）时反射静默失败，行为等同旧版（重启生效）。

操作步骤：

1. 把音频放进 `hotplugins/resources/<附加包名>/override/audio/sfx/army_click|army_religions|army_culture|army_default/…`
2. 面板点「全部重载」（会顺带执行 `rescanResources()`）
3. 再次点兵牌即听到新语音，无需重启

## 八、注意

- 目录内编号必须连续:`0.ogg` 存在而 `1.ogg` 缺失时,只会读到 1 条。
- `MAX_SOUNDS` 改大时,同步把导入脚本的 `-PerFolder` 调大即可;两者默认都是 10。
- 补丁 dex 必须位于 `classes.dex` 最前(同名类先加载先算),否则仍是整合包的原实现。
