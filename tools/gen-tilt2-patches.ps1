# Generate tilt patches for MoveUnits_BiggestCities.draw and MoveUnits_BiggestCities_Diplomacy.draw2
# Based on pack disassembly caches (chk_siege / vk_recon); inserts inline tilt warp
# between raw pixel point computation and Vector2 construction / circle drawing.
$ErrorActionPreference = "Stop"
$G = if ($env:AOH_GAME_ROOT) { $env:AOH_GAME_ROOT } else { Split-Path -Parent (Split-Path -Parent $PSScriptRoot) }
$patches = Join-Path $G "LoaderSettings\patches"
$enc = New-Object Text.UTF8Encoding($false)

function Get-Block([string]$file, [string]$contains) {
    $ls = [IO.File]::ReadAllLines($file, [Text.Encoding]::UTF8)
    $start = -1; $end = -1
    for ($k = 0; $k -lt $ls.Count; $k++) { if ($ls[$k].StartsWith(".method") -and $ls[$k].Contains($contains)) { $start = $k; break } }
    if ($start -lt 0) { throw "method not found: $contains @ $file" }
    for ($k = $start; $k -lt $ls.Count; $k++) { if ($ls[$k].StartsWith(".end method")) { $end = $k; break } }
    if ($end -lt 0) { throw "end method not found: $contains @ $file" }
    return ,($ls[$start..$end])
}
function Assert-Count([string]$text, [string]$needle, [int]$expect, [string]$tag) {
    $c = ([regex]::Matches($text, [regex]::Escape($needle))).Count
    if ($c -ne $expect) { throw ("[{0}] target count {1} != expected {2}" -f $tag, $c, $expect) }
}

# ---------- 1) MoveUnits_BiggestCities.draw ----------
$src1 = "$env:TEMP\chk_siege\aoc\kingdoms\lukasz\map\moveUnits\other\MoveUnits_BiggestCities.smali"
$b1 = Get-Block $src1 "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V"
$t1 = ($b1 -join "`n")
Assert-Count $t1 ".registers 10" 1 "base-reg"
$t1 = $t1.Replace(".registers 10", ".registers 16")

$tgt1 = "    invoke-direct {v3, v4, v5}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V"
Assert-Count $t1 $tgt1 1 "base-A"
$warpA = @'
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v7

    mul-float v7, p2, v7

    const/high16 v8, 0x3f800000    # 1.0f

    add-float v9, v7, v8

    mul-float v10, v7, v5

    sget v11, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    move v12, v9

    sub-float/2addr v12, v10

    div-float/2addr v5, v12

    div-float/2addr v12, v9

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v4, v10

    div-float/2addr v4, v12

    add-float/2addr v4, v10

'@
$t1 = $t1.Replace($tgt1, ($warpA.TrimEnd() + "`n" + $tgt1))

$tgt2 = "    invoke-direct {v2, v3, v4}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V"
Assert-Count $t1 $tgt2 1 "base-B"
$warpB = @'
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v5

    mul-float v5, p2, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float v7, v5, v6

    mul-float v8, v5, v4

    sget v9, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v9, v9

    div-float/2addr v8, v9

    move v10, v7

    sub-float/2addr v10, v8

    div-float/2addr v4, v10

    div-float/2addr v10, v7

    sget v8, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v3, v8

    div-float/2addr v3, v10

    add-float/2addr v3, v8

'@
$t1 = $t1.Replace($tgt2, ($warpB.TrimEnd() + "`n" + $tgt2))
Assert-Count $t1 "getTiltK" 2 "base-final"
[IO.File]::WriteAllText((Join-Path $patches "MoveUnits_BiggestCities.draw.smali"), $t1, $enc)
Write-Host "[OK] MoveUnits_BiggestCities.draw.smali"

# ---------- 2) MoveUnits_BiggestCities_Diplomacy.draw2 ----------
$src2 = "$env:TEMP\vk_recon\aoc\kingdoms\lukasz\map\moveUnits\other\MoveUnits_BiggestCities_Diplomacy.smali"
$b2 = Get-Block $src2 "draw2(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)Z"
$t2 = ($b2 -join "`n")
Assert-Count $t2 ".registers 13" 1 "dip-reg"
$t2 = $t2.Replace(".registers 13", ".registers 16")

$tgtV = "    invoke-direct {v4, v5, v6}, Lcom/badlogic/gdx/math/Vector2;-><init>(FF)V"
Assert-Count $t2 $tgtV 2 "dip-V"
$warpV = @'
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v10

    mul-float v10, p2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v10, v11

    mul-float v12, v10, v6

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v12, v10

    sub-float v12, v11, v12

    div-float/2addr v6, v12

    div-float/2addr v12, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v5, v10

    div-float/2addr v5, v12

    add-float/2addr v5, v10

'@
$t2 = $t2.Replace($tgtV, ($warpV.TrimEnd() + "`n" + $tgtV))

$warpC = @'
    invoke-static {}, Laoc/kingdoms/lukasz/jakowski/Game;->getTiltK()F

    move-result v10

    mul-float v10, p2, v10

    const/high16 v11, 0x3f800000    # 1.0f

    add-float v11, v10, v11

    mul-float v12, v10, v5

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_HEIGHT:I

    int-to-float v10, v10

    div-float/2addr v12, v10

    sub-float v12, v11, v12

    div-float/2addr v5, v12

    div-float/2addr v12, v11

    sget v10, Laoc/kingdoms/lukasz/jakowski/CFG;->GAME_WIDTH:I

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    sub-float/2addr v4, v10

    div-float/2addr v4, v12

    add-float/2addr v4, v10

'@
$tgtC = "    invoke-virtual {v3, v4, v5, v6}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->filledCircle(FFF)V"
Assert-Count $t2 $tgtC 1 "dip-C"
$t2 = $t2.Replace($tgtC, ($warpC.TrimEnd() + "`n" + $tgtC))
$tgtR = "    invoke-virtual {v3, v4, v5, v6, v7}, Lspace/earlygrey/shapedrawer/ShapeDrawer;->circle(FFFF)V"
Assert-Count $t2 $tgtR 1 "dip-R"
$t2 = $t2.Replace($tgtR, ($warpC.TrimEnd() + "`n" + $tgtR))
Assert-Count $t2 "getTiltK" 4 "dip-final"
[IO.File]::WriteAllText((Join-Path $patches "MoveUnits_BiggestCities_Diplomacy.draw2.smali"), $t2, $enc)
Write-Host "[OK] MoveUnits_BiggestCities_Diplomacy.draw2.smali"
