# SiegeTint —— 占领进度滤镜(LoaderSettings 子项目)

## 作用

原版围攻(兵牌进敌省后打要塞)在省份中心画「堡垒图标 + 蓝色进度条」。该显示在伪 3D 地图与 3D 兵模下观感差,本项目改为:

- **不再绘制**原版图标与进度条;
- 在被围攻的省份上叠加**即将占领该省的文明颜色**滤镜(颜色取 `Civilization.getColor()`,与占领完成后的省图层同源);
- 透明度 = `siegeProgress`(0→1)线性加深,并乘地图省份透明度系数;
- 滤镜带**倾斜条纹蒙版**(运行时生成的斜线图集,走游戏自带 `shaderAlpha_Pattern`),以区分「占领中」与「已占领」(已占领为原版平铺色块);
- 绘制位置在 `ProvinceDraw.drawOccupiedProvinces` 末尾(省填色之后、部队/城市之前),随地图相机自动套用伪 3D 倾斜;
- 省份中心额外绘制**百分比标签**(`<数字>%`),与滤镜同在**地图通道**绘制(坐标=省中心 `translate+iCenterShift`,随地图缩放/伪3D 倾斜一起贴地,不再是屏幕图标),无底框、靠阴影保证可读;
- 完全由 `SiegeManager.lProvinces` + `ProvinceData4.isUnderSiege()` 每帧实时驱动,**围攻结束/取消当帧即消失**,不会残留图层。

## 开关

设置 → 地图 子页用**原生标题栏** `占领显示` 分隔,下面两个开关(`Settings_MapToggle`):

- `占领进度显示: 开/关` → `SettingsManager.SIEGE_TINT`(省份颜色+斜线蒙版;关闭后回到原版图标+进度条)
- `启用百分比显示: 开/关` → `SettingsManager.SIEGE_PERCENT`(百分比标签;仅在上面的滤镜开启时生效)
- `数字明暗: -100..+100`(原生 `Slider`)→ `SettingsManager.SIEGE_PERCENT_GRAY`(-1..+1):
  **文字颜色直接等于占领者文明色**(不转灰度,与滤镜同源),亮度默认**自动拉对比**:
  底色亮度 > 0.5 时压暗、否则提亮,幅度 `TEXT_CONTRAST=0.35`;滑块在此基础上微调(`±1 ≈ ±0.5` 亮度,结果夹在 0.08..0.95)。
  文字带黑影保证可读。拖动时实时生效,离开地图页时统一写盘。

三项均随 `settings/Settings.txt` 持久化(前两项默认开、灰度默认 0),点击/拖动立即生效无需重启。

## 大量围攻时的性能设计

逐省 `Renderer.drawText`(每省阴影+主文字 = 2 次完整 layout + 全字体 `setFontScale` + flush)在几十个省同时被围攻时会明显掉帧。当前实现:

1. **一次遍历**:`drawAll` 同一循环内完成滤镜与标签收集,不再分两轮重复查省/查 `isUnderSiege`/算尺寸;
2. **文字批量提交**:字号量化成 5 档(`TIER_HEIGHT` 15/21/29/39/52 地图像素),只预算每档的文字宽高(居中)与 `TIER_SCALE`;所有标签(阴影 + 主文字)**塞进同一个 `BitmapFontCache`**,按档位设一次 `font.getData().setScale` 后批量 `addText`,draw call 从 ~2N 降到个位数;
   - ⚙ **着色路径(必读)**:该 gdx 的 `addText(GlyphLayout,x,y)` 只认 layout 自带的 `colors`(**忽略 `cache.setColor`**,直接改 `colors.items[1]` 实测也无效),颜色总是字体默认白;必须用 `cache.setColor(r,g,b,a)` + **`cache.addText(CharSequence,x,y)`** —— 它内部 `setText(font,str,...,cache.color,...)` 才会把当前颜色写进 layout。每次调用从 `Pools` 取一个 layout,`cache.clear()` 会 `freeAll` 回收,无泄漏。
3. **文明色缓存**:`findBesiegerCiv` + 外交判定按省份 ID 用数组缓存(进度变化或 20 帧 TTL 到期才重算),滤镜与文字共用一次解析;
4. **屏幕尺寸阈值**:`TIER_HEIGHT × mapScale < 9px` 不画数字(远景小省既看不清又费顶点),上限 `MAX_LABELS=192`;
5. 绘制成本中无法合并的部分:**滤镜每省仍必须 `flush()` 一次**——`shaderAlpha_Pattern` 的 `u_maskScale` 是全局 uniform,每省要按自身尺寸改值,没法 batch。

## 颜色取链(滤镜与数字共用)

`SiegeTint.computeColor()` 按优先级取「即将占领者」的文明色,失败才向下退:

1. 省内「非控制者」部队中 `iArmy` 最大者(与 `Province.occupyProvince()` 的 `bestCivID` 同源;先找交战的,找不到就取任意非控制者部队;跳过 `civID<=0`);
2. 否则取控制者(`occupiedByCivID > 0` ? 占领者 : 省所有者);
3. 再不行用 `DiplomacyManager.COLOR_WAR`,最后中灰 —— **没有白色兜底**;
4. `guardAgainstWhite()`:算出的 r/g/b 全 > 0.9 时换成战争色/中灰(纯白几乎总是取色失败,与「没开」无区别)。

⚠ `Province.isOccupied()` 等价于 `getOccupiedByCivID() != 0`,`getOccupiedByCivID()` 默认 0 = 未占领、-1 = 叛军占领;
所以不能把它当 target 传给 `isAtWar`(会拿到 -1)。`DiplomacyManager.isAtWar` 对负数 civ 有分支,但首句仍会
`Game.getCiv(iCivA).diplomacy...`,`-1` 可能 NPE —— 调用处 `isAtWarSafe()` 把异常当作「交战」。

## 结构

- `tools\apply-patch.ps1`:在 `final-smali` 上打三处补丁(幂等)
  1. `SiegeManager.drawSiege` 改名为 `drawSiege_Vanilla`(public),追加同名转发方法 → `com.saysky.siegetint.SiegeTint.drawSiege`;
  2. `ProvinceDraw.drawOccupiedProvinces` 末尾插入 `SiegeTint.drawAll(oSB)`;
  3. `SettingsManager` 新增 `SIEGE_TINT` / `SIEGE_PERCENT`(boolean,默认 true)与 `SIEGE_PERCENT_GRAY`(float,默认 0)。
- `patches\SiegeManager__drawSiege.smali`:转发方法块。
- Java 实现在 `..\java\src\com\saysky\siegetint\SiegeTint.java`。

## 备注

- 原版进度条区域仍保留触摸热区(`Touch.isMouseOverSiege`),点击省中心仍可打开围攻面板。
- 条纹图集在首次绘制时创建(64×64 / 周期 32px / 线宽 11px),失败则本次会话自动退回「不显示滤镜」(原版图标也不会回来,因为开关为开;需要原版显示请关闭设置项)。
- 注释:`alpha_shader_pattern.glsl` 的 mask(`u_texture2`)用原始 uv 采样,`u_maskScale/Y` 只缩放颜色 uv —— 所以斜线周期按「地图像素」固定(`TILE_MAP_PX=40`),省份大小不同也不会变形。
- 构建:`LoaderSettings\build-dex.bat`(merge.ps1 第 15 段自动调用本子项目)。
