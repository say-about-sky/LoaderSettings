# v12: Map settings UI (nav row + map page + map-off render gate)
# 1) Settings_Menu.smali: insert MAP_PAGE branch, nav row after UIScale row, delete old MapTilt rows
# 2) Generate patches\Renderer.render.smali with MAP_OFF early exit
$ErrorActionPreference = "Stop"
$G = if ($env:AOH_GAME_ROOT) { $env:AOH_GAME_ROOT } else { Split-Path -Parent (Split-Path -Parent $PSScriptRoot) }
$enc = New-Object Text.UTF8Encoding($false)

# ---------- 1) Settings_Menu.smali ----------
$f = "$G\LoaderSettings\smali\aoc\kingdoms\lukasz\menus\Settings\Settings_Menu.smali"
$list = New-Object System.Collections.ArrayList
$list.AddRange([string[]]([IO.File]::ReadAllLines($f, [Text.Encoding]::UTF8)))

function FindOne([string]$needle) {
    $hits = @()
    for ($k = 0; $k -lt $list.Count; $k++) { if ($list[$k] -eq $needle) { $hits += $k } }
    if ($hits.Count -ne 1) { throw ("anchor count {0} != 1 : {1}" -f $hits.Count, $needle) }
    $hits[0]
}

# (a) MAP_PAGE branch before ".line 67"
$a = FindOne "    .line 67"
if ($list[$a + 1] -ne "    new-instance v0, Ljava/util/ArrayList;") { throw "unexpected context at .line 67" }
$branch = @'
    sget-boolean v0, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->MAP_PAGE:Z

    if-eqz v0, :cond_map_page_normal

    invoke-direct {p0}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;->initMapPage()V

    return-void

    :cond_map_page_normal
'@
$list.InsertRange($a, [string[]]($branch -split "`n"))

# (b) nav row before ".line 116" (right after UI scale row)
$list2 = $list
$b = -1
$hits = @()
for ($k = 0; $k -lt $list.Count; $k++) { if ($list[$k] -eq "    .line 116") { $hits += $k } }
if ($hits.Count -ne 1) { throw ("anchor .line 116 count {0}" -f $hits.Count) }
$b = $hits[0]
# sanity: the UIScale row ($4) must exist before this point
$has4 = $false
for ($k = 0; $k -lt $b; $k++) { if ($list[$k].Contains("Settings_Menu`$4;-><init>")) { $has4 = $true } }
if (-not $has4) { throw "Settings_Menu`$4 not found before .line 116" }
$nav = @'
    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$63;

    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/setting/SettingsProvince;->getSettingsText_Map()Ljava/lang/String;

    move-result-object v2

    sget v3, Laoc/kingdoms/lukasz/jakowski/CFG;->FONT_REGULAR:I

    mul-int/lit8 v0, v14, 0x2

    sub-int v7, v15, v0

    const/4 v8, 0x1

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->BUTTON_HEIGHT:I

    const/4 v4, -0x1

    move-object v0, v11

    move-object/from16 v1, p0

    move v5, v14

    move/from16 v6, v19

    invoke-direct/range {v0 .. v9}, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu$63;-><init>(Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu;Ljava/lang/String;IIIIIZI)V

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laoc/kingdoms/lukasz/menu_element/MenuElement;

    invoke-virtual {v0}, Laoc/kingdoms/lukasz/menu_element/MenuElement;->getHeight()I

    move-result v0

    sget v1, Laoc/kingdoms/lukasz/jakowski/CFG;->PADDING:I

    add-int/2addr v0, v1

    add-int v19, v19, v0

'@
$list.InsertRange($b, [string[]]($nav -split "`n"))

# (c) delete old MapTilt rows ($61/$62 chunk, up to .line 697)
$i61 = -1
for ($k = 0; $k -lt $list.Count; $k++) { if ($list[$k] -eq "    new-instance v11, Laoc/kingdoms/lukasz/menus/Settings/Settings_Menu`$61;") { $i61 = $k; break } }
if ($i61 -lt 0) { throw "`$61 instantiation not found" }
$i697 = -1
for ($k = $i61; $k -lt $list.Count; $k++) { if ($list[$k] -eq "    .line 697") { $i697 = $k; break } }
if ($i697 -lt 0) { throw ".line 697 not found after `$61" }
$lastAdv = -1
for ($k = $i61; $k -lt $i697; $k++) { if ($list[$k] -eq "    add-int v19, v19, v0") { $lastAdv = $k } }
if ($lastAdv -lt 0) { throw "advance line not found in `$61/`$62 chunk" }
$list.RemoveRange($i61, $lastAdv - $i61 + 1)

# write back
[IO.File]::WriteAllLines($f, [string[]]$list.ToArray(), $enc)

# verify
$txt = [IO.File]::ReadAllText($f, [Text.Encoding]::UTF8)
$n61 = ([regex]::Matches($txt, [regex]::Escape("Settings_Menu`$61"))).Count
$navCount = ([regex]::Matches($txt, [regex]::Escape("getSettingsText_Map"))).Count
$branchCount = ([regex]::Matches($txt, [regex]::Escape("initMapPage"))).Count
if ($n61 -ne 0) { throw ("`$61 refs remain: {0}" -f $n61) }
if ($navCount -ne 1) { throw ("getSettingsText_Map count {0}" -f $navCount) }
if ($branchCount -ne 1) { throw ("initMapPage count {0}" -f $branchCount) }
Write-Host "[OK] Settings_Menu.smali patched (branch+navrow, MapTilt rows removed)"

# ---------- 2) Renderer.render patch ----------
$src = "$G\LoaderSettings\merge-work\pack-smali\aoc\kingdoms\lukasz\jakowski\Renderer\Renderer.smali"
$ls = [IO.File]::ReadAllLines($src, [Text.Encoding]::UTF8)
$start = -1
for ($k = 0; $k -lt $ls.Count; $k++) { if ($ls[$k].StartsWith(".method") -and $ls[$k].EndsWith("render()V")) { $start = $k; break } }
if ($start -lt 0) { throw "render()V not found" }
$end = -1
for ($k = $start; $k -lt $ls.Count; $k++) { if ($ls[$k].StartsWith(".end method")) { $end = $k; break } }
$t = ($ls[$start..$end] -join "`n")
$anchor = "    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearScreen()V"
if (([regex]::Matches($t, [regex]::Escape($anchor))).Count -ne 1) { throw "clearScreen anchor != 1" }
$gate = @'
    invoke-virtual {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->clearScreen()V

    sget-boolean v1, Laoc/kingdoms/lukasz/jakowski/Game;->MAP_OFF:Z

    if-eqz v1, :cond_map_off_cont

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderer_resetScale()V

    invoke-direct {v0}, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->renderUI()V

    iget-object v1, v0, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSB:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    sget-object v1, Laoc/kingdoms/lukasz/jakowski/Renderer/Renderer;->oSBBorder:Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;

    invoke-virtual {v1}, Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;->end()V

    return-void

    :cond_map_off_cont
'@
$t = $t.Replace($anchor, $gate.TrimEnd())
[IO.File]::WriteAllText("$G\LoaderSettings\patches\Renderer.render.smali", $t, $enc)
Write-Host "[OK] patches\Renderer.render.smali generated"
