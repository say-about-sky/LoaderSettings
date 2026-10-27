<#
  LateGamePerf - apply game-side late-game perf patch to LoaderSettings\final-smali (ASCII only)
    1) GameThread.updateMinimap()V  -> LatePerf.updateMinimap() (min 7-day minimap rebuild + tick timer)
    2) SaveGameManager.autosave()V  -> prepend LatePerf.onDayTickEnd() (slow-tick logging)
    3) MapBG.smali                  -> dispose the Pixmap right after new Texture(Pixmap) (native leak)
  Missing baseline classes are disassembled from the target package dex.
#>
param(
    [string]$FinalSmali = "",
    [string]$PackageDir = "",
    [string]$Baksmali = "",
    [string]$JavaExe = ""
)

$ErrorActionPreference = "Stop"

$here  = Split-Path -Parent $MyInvocation.MyCommand.Path
$sub   = Split-Path -Parent $here
$proj  = Split-Path -Parent $sub
$game  = Split-Path -Parent $proj
$androidRoot = Split-Path -Parent $game

if ([string]::IsNullOrEmpty($FinalSmali)) { $FinalSmali = Join-Path $proj "final-smali" }
if ([string]::IsNullOrEmpty($Baksmali))   { $Baksmali   = Join-Path $game ".tools\smali\baksmali-2.5.2.jar" }
if ([string]::IsNullOrEmpty($JavaExe)) {
    $JavaExe = if ($env:JAVA_HOME) { Join-Path $env:JAVA_HOME "bin\java.exe" } else { "" }
    if ([string]::IsNullOrEmpty($JavaExe) -or -not (Test-Path -LiteralPath $JavaExe)) {
        $jdk = @(Get-ChildItem "C:\Program Files\Microsoft\jdk-*","C:\Program Files\Java\jdk-*" -Directory -ErrorAction SilentlyContinue |
                 Sort-Object Name -Descending | Select-Object -First 1)
        $JavaExe = if ($jdk.Count -gt 0) { Join-Path $jdk[0].FullName "bin\java.exe" } else { "" }
    }
    if ([string]::IsNullOrEmpty($JavaExe)) { throw "java.exe not found: set JAVA_HOME or pass -JavaExe" }
}
$patchDir = Join-Path $sub "patches"

if ([string]::IsNullOrEmpty($PackageDir) -and -not [string]::IsNullOrEmpty($env:AOH_PACKAGE_DIR)) {
    $PackageDir = $env:AOH_PACKAGE_DIR
}
if ([string]::IsNullOrEmpty($PackageDir)) {
    $candRoot = Join-Path $androidRoot "GameCivs"
    if (Test-Path -LiteralPath $candRoot) {
        $all = @(Get-ChildItem -LiteralPath $candRoot -Directory |
            Where-Object { (Test-Path -LiteralPath (Join-Path $_.FullName "classes.dex")) })
        $cand = $all |
            Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "assets\map\Earth3\scenarios\TheGreatWar\missions") } |
            Sort-Object Name | Select-Object -First 1
        if (-not $cand) {
            $cand = $all |
                Where-Object { Test-Path -LiteralPath (Join-Path $_.FullName "assets") } |
                Sort-Object Name | Select-Object -First 1
        }
        if ($cand) { $PackageDir = $cand.FullName }
    }
}

if (-not (Test-Path -LiteralPath $FinalSmali)) { throw "missing final-smali: $FinalSmali (run tools\merge.ps1 first)" }
Write-Host "[lateperf] final-smali: $FinalSmali"
Write-Host "[lateperf] package    : $PackageDir"

$SCRIPT:enc = New-Object Text.UTF8Encoding($false)
function RL([string]$p) { [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8) }
function WL([string]$p, $lines) { [IO.File]::WriteAllLines($p, [string[]]$lines, $SCRIPT:enc) }

function Read-Block([string]$p) {
    $l = New-Object System.Collections.Generic.List[string]
    foreach ($x in [IO.File]::ReadAllLines($p, [Text.Encoding]::UTF8)) { $l.Add($x) }
    while ($l.Count -gt 0 -and $l[$l.Count - 1].Trim() -eq "") { $l.RemoveAt($l.Count - 1) }
    ,$l
}

function Find-MethodRange($lines, [string]$sig) {
    $name = $sig.Substring(0, $sig.IndexOf('('))
    $s1 = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        $l = $lines[$i]
        if ($l.StartsWith(".method ") -and ($l.Split(' ')[-1] -eq $sig)) { $s1 = $i; break }
    }
    if ($s1 -lt 0) {
        $hits = @()
        for ($i = 0; $i -lt $lines.Count; $i++) {
            $l = $lines[$i]
            if ($l.StartsWith(".method ") -and ($l.Split(' ')[-1] -like "$name(*")) { $hits += $i }
        }
        if ($hits.Count -eq 0) { throw "method not found: $sig" }
        if ($hits.Count -gt 1) { throw "method sig not unique: $sig" }
        $s1 = $hits[0]
    }
    $e1 = -1
    for ($i = $s1; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith(".end method")) { $e1 = $i; break } }
    if ($e1 -lt 0) { throw "method block incomplete: $sig" }
    @($s1, $e1)
}

function Replace-Block([string]$file, [string]$sig, $block) {
    $lines = New-Object System.Collections.Generic.List[string]
    $lines.AddRange([string[]](RL $file))
    $r = Find-MethodRange $lines $sig
    $out = New-Object System.Collections.Generic.List[string]
    for ($i = 0; $i -lt $r[0]; $i++) { $out.Add($lines[$i]) }
    $out.AddRange([string[]]$block)
    for ($i = $r[1] + 1; $i -lt $lines.Count; $i++) { $out.Add($lines[$i]) }
    WL $file $out
}

function Ensure-Class([string]$relPath, [string]$descriptor) {
    $target = Join-Path $FinalSmali $relPath
    if (Test-Path -LiteralPath $target) { return $target }
    if ([string]::IsNullOrEmpty($PackageDir)) { throw "missing class in final-smali and no package dir: $relPath" }
    if (-not (Test-Path -LiteralPath $Baksmali)) { throw "missing baksmali: $Baksmali" }
    if (-not (Test-Path -LiteralPath $JavaExe)) { throw "missing java: $JavaExe" }

    $latin = [Text.Encoding]::GetEncoding(28591)
    $dexCandidates = @()
    foreach ($d in (Get-ChildItem -LiteralPath $PackageDir -Filter *.dex | Sort-Object Name)) {
        $bytes = [IO.File]::ReadAllBytes($d.FullName)
        if ($latin.GetString($bytes).Contains($descriptor)) { $dexCandidates += $d.FullName }
    }
    if ($dexCandidates.Count -eq 0) { throw "class not found in package dex: $descriptor" }

    foreach ($dex in $dexCandidates) {
        $tmp = Join-Path $env:TEMP ("lateperf_" + [Guid]::NewGuid().ToString("N"))
        New-Item -ItemType Directory -Force -Path $tmp | Out-Null
        try {
            & $JavaExe -jar $Baksmali d $dex -o $tmp --classes $descriptor
            $src = Join-Path $tmp $relPath
            if (Test-Path -LiteralPath $src) {
                $dir = Split-Path -Parent $target
                New-Item -ItemType Directory -Force -Path $dir | Out-Null
                Copy-Item -LiteralPath $src -Destination $target -Force
                return $target
            }
        }
        finally {
            if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp -Recurse -Force }
        }
    }
    throw "baksmali could not extract class from any package dex: $descriptor"
}

# ---------- 1) GameThread.updateMinimap -> LatePerf ----------
$gtRel = "aoc\kingdoms\lukasz\jakowski\GameThreads\GameThread.smali"
$gt = Ensure-Class $gtRel "Laoc/kingdoms/lukasz/jakowski/GameThreads/GameThread;"
Replace-Block $gt "updateMinimap()V" (Read-Block (Join-Path $patchDir "GameThread__updateMinimap.smali"))
Write-Host "[lateperf] GameThread.updateMinimap -> LatePerf.updateMinimap (min 7 days)"

# ---------- 2) SaveGameManager.autosave: prepend day-tick end hook ----------
$smRel = "aoc\kingdoms\lukasz\jakowski\SaveLoad\SaveGameManager.smali"
$sm = Ensure-Class $smRel "Laoc/kingdoms/lukasz/jakowski/SaveLoad/SaveGameManager;"
$smLines = New-Object System.Collections.Generic.List[string]
$smLines.AddRange([string[]](RL $sm))
$r = Find-MethodRange $smLines "autosave()V"
$hasHook = $false
for ($i = $r[0]; $i -le $r[1]; $i++) {
    if ($smLines[$i].Contains("LatePerf;->onDayTickEnd")) { $hasHook = $true; break }
}
if (-not $hasHook) {
    $regAt = -1
    for ($i = $r[0]; $i -le $r[1]; $i++) {
        if ($smLines[$i].Trim().StartsWith(".registers")) { $regAt = $i; break }
    }
    if ($regAt -lt 0) { throw "autosave(): .registers not found" }
    $smLines.Insert($regAt + 1, "")
    $smLines.Insert($regAt + 2, "    invoke-static {}, Lcom/saysky/lateperf/LatePerf;->onDayTickEnd()V")
    WL $sm $smLines
    Write-Host "[lateperf] SaveGameManager.autosave: day-tick end hook inserted"
}
else {
    Write-Host "[lateperf] SaveGameManager.autosave: already hooked, skip"
}

# ---------- 3) MapBG: dispose Pixmap after new Texture(Pixmap) ----------
$mb = Ensure-Class "aoc\kingdoms\lukasz\map\map\MapBG.smali" "Laoc/kingdoms/lukasz/map/map/MapBG;"
$mbLines = New-Object System.Collections.Generic.List[string]
$mbLines.AddRange([string[]](RL $mb))
$rx = [regex]'^invoke-direct \{(v\d+), (v\d+)\}, Lcom/badlogic/gdx/graphics/Texture;-><init>\(Lcom/badlogic/gdx/graphics/Pixmap;\)V$'
$inserted = 0
$i = 0
while ($i -lt $mbLines.Count) {
    $t = $mbLines[$i].Trim()
    $m = $rx.Match($t)
    if ($m.Success) {
        $pixReg = $m.Groups[2].Value
        # already followed by a dispose?
        $j = $i + 1
        while ($j -lt $mbLines.Count -and $mbLines[$j].Trim() -eq "") { $j++ }
        $done = ($j -lt $mbLines.Count -and $mbLines[$j].Contains("Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V"))
        if (-not $done) {
            $mbLines.Insert($i + 1, "")
            $mbLines.Insert($i + 2, "    invoke-virtual {$pixReg}, Lcom/badlogic/gdx/graphics/Pixmap;->dispose()V")
            $inserted++
            $i += 2
        }
    }
    $i++
}
if ($inserted -gt 0) {
    WL $mb $mbLines
    Write-Host ("[lateperf] MapBG: Pixmap.dispose inserted at {0} site(s)" -f $inserted)
}
else {
    Write-Host "[lateperf] MapBG: pixmap dispose already present (or no site), skip"
}

# ---------- 4) MoveUnits.draw / draw_Ally: pool path allocations ----------
# Each frame + each arrow allocates Array<Vector2> + one Vector2 per path point, then
# ShapeDrawer triangulates the path. Late game (many allied armies) => thousands of temp
# objects per frame. Replace the allocations with a reusable pool (PathPool).
function Pool-Method($lines, [string]$sig) {
    $r = Find-MethodRange $lines $sig
    $start = $r[0]
    $end = $r[1]
    for ($k = $start; $k -le $end; $k++) {
        if ($lines[$k].Contains("LatePerf/PathPool")) { return 0 }
    }
    $vecNew = @{}
    $ctorList = New-Object System.Collections.Generic.List[object]
    for ($i = $start; $i -le $end; $i++) {
        $t = $lines[$i].Trim()
        $mn = [regex]::Match($t, '^new-instance (v\d+), Lcom/badlogic/gdx/math/Vector2;$')
        if ($mn.Success) {
            $reg = $mn.Groups[1].Value
            if (-not $vecNew.ContainsKey($reg)) { $vecNew[$reg] = New-Object System.Collections.Generic.List[int] }
            $vecNew[$reg].Add($i)
            continue
        }
        $mc = [regex]::Match($t, '^invoke-direct \{(v\d+), (v\d+), (v\d+)\}, Lcom/badlogic/gdx/math/Vector2;-><init>\(FF\)V$')
        if ($mc.Success) {
            $ctorList.Add([pscustomobject]@{ Idx = $i; Reg = $mc.Groups[1].Value; A = $mc.Groups[2].Value; B = $mc.Groups[3].Value })
        }
    }
    $ctorCount = @{}
    foreach ($c in $ctorList) {
        if (-not $ctorCount.ContainsKey($c.Reg)) { $ctorCount[$c.Reg] = 0 }
        $ctorCount[$c.Reg] = $ctorCount[$c.Reg] + 1
    }
    $del = New-Object System.Collections.Generic.HashSet[int]
    $repl = @{}
    foreach ($c in $ctorList) {
        $reg = $c.Reg
        if (-not $vecNew.ContainsKey($reg)) { continue }
        if ($vecNew[$reg].Count -ne $ctorCount[$reg]) { continue }
        $cand = -1
        foreach ($idx in $vecNew[$reg]) {
            if ($idx -lt $c.Idx -and -not $del.Contains($idx)) { $cand = $idx }
        }
        if ($cand -lt 0) { continue }
        [void]$del.Add($cand)
        $repl[$c.Idx] = @(
            "    invoke-static {$($c.A), $($c.B)}, Lcom/saysky/lateperf/PathPool;->vec(FF)Lcom/badlogic/gdx/math/Vector2;",
            "    move-result-object $reg"
        )
    }
    for ($i = $start; $i -le $end; $i++) {
        $t = $lines[$i].Trim()
        $ma = [regex]::Match($t, '^invoke-direct \{(v\d+)\}, Lcom/badlogic/gdx/utils/Array;-><init>\(\)V$')
        if (-not $ma.Success) { continue }
        $reg = $ma.Groups[1].Value
        $ni = -1
        $lo = [Math]::Max($start, $i - 10)
        for ($j = $i - 1; $j -ge $lo; $j--) {
            if ($lines[$j].Trim() -eq ("new-instance " + $reg + ", Lcom/badlogic/gdx/utils/Array;")) { $ni = $j; break }
        }
        if ($ni -lt 0) { continue }
        [void]$del.Add($ni)
        $repl[$i] = @(
            "    invoke-static {}, Lcom/saysky/lateperf/PathPool;->buf()Lcom/badlogic/gdx/utils/Array;",
            "    move-result-object $reg"
        )
    }
    if ($repl.Count -eq 0) { return 0 }
    $out = New-Object System.Collections.Generic.List[string]
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($del.Contains($i)) { continue }
        if ($repl.ContainsKey($i)) {
            foreach ($x in $repl[$i]) { $out.Add($x) }
            continue
        }
        $out.Add($lines[$i])
    }
    $lines.Clear()
    $lines.AddRange([string[]]$out)
    return $repl.Count
}

$muRel = "aoc\kingdoms\lukasz\map\moveUnits\MoveUnits.smali"
$mu = Ensure-Class $muRel "Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;"
$muLines = New-Object System.Collections.Generic.List[string]
$muLines.AddRange([string[]](RL $mu))
$pl1 = Pool-Method $muLines "draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V"
$pl2 = Pool-Method $muLines "draw_Ally(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V"
if ($pl1 -gt 0 -or $pl2 -gt 0) { WL $mu $muLines }
Write-Host ("[lateperf] MoveUnits: pooled draw={0} draw_Ally={1} allocation site(s)" -f $pl1, $pl2)

# ---------- 5) ProvinceDraw.drawMoveUnits_Just: viewport culling ----------
# Only ALLY / VASSAL move lines are wrapped (player's own lines stay untouched: 玩家自己的线永远画).
$pdRel = "aoc\kingdoms\lukasz\map\province\ProvinceDraw.smali"
$pd = Ensure-Class $pdRel "Laoc/kingdoms/lukasz/map/province/ProvinceDraw;"
$pdLines = New-Object System.Collections.Generic.List[string]
$pdLines.AddRange([string[]](RL $pd))
$rxAlly = [regex]'^invoke-virtual \{(v\d+), p0, p1\}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw_Ally\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F\)V$'
$rxOwn = [regex]'^invoke-virtual \{(v\d+), p0, p1\}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw\(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F\)V$'
$rxPlayerWrapped = [regex]'^invoke-static \{(v\d+), p0, p1\}, Lcom/saysky/lateperf/MoveCull;->drawPlayer\(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F\)V$'
$culled = 0
$restored = 0
for ($i = 0; $i -lt $pdLines.Count; $i++) {
    $t = $pdLines[$i].Trim()
    $m = $rxAlly.Match($t)
    if ($m.Success) {
        $pdLines[$i] = "    invoke-static {" + $m.Groups[1].Value + ", p0, p1}, Lcom/saysky/lateperf/MoveCull;->drawAlly(Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V"
        $culled++
        continue
    }
    # v20b: 旧版把玩家自己的线也包进了 MoveCull.drawPlayer -> 自己的引导线消失。
    # 这里把残留的 drawPlayer 还原成原始 invoke-virtual(基线重建时不会命中)。
    $m = $rxPlayerWrapped.Match($t)
    if ($m.Success) {
        $pdLines[$i] = "    invoke-virtual {" + $m.Groups[1].Value + ", p0, p1}, Laoc/kingdoms/lukasz/map/moveUnits/MoveUnits;->draw(Lcom/badlogic/gdx/graphics/g2d/SpriteBatch;F)V"
        $restored++
        continue
    }
    if ($rxOwn.Match($t).Success) {
        $restored++
    }
}
if ($culled -gt 0 -or $restored -gt 0) { WL $pd $pdLines }
Write-Host ("[lateperf] ProvinceDraw: ally cull wrappers = {0}, player lines left original = {1}" -f $culled, $restored)


Write-Host "[lateperf] done"
