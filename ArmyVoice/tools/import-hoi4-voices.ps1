<#
  ArmyVoice - HOI4 voice importer (ASCII only)

  Source : <Hoi4Dir>  (dlc\*\sound\<tag>\*.wav, integrated_dlc\*\sound\<tag>\*.wav)
  Target : <AssetsDir>\audio\sfx\
             army_click\<civTag>\<0..N-1>.ogg      (highest priority, merge by default)
             army_religions\<religionName>\<0..N-1>.ogg
             army_culture\<cultureGroup>\<0..N-1>.ogg
             army_default\<0..N-1>.ogg

  Folder naming follows the original manager: contiguous 0.ogg .. N-1.ogg, lookup stops
  at the first missing index, so every generated folder is written 0..N-1.

  Default mode is MERGE: existing files are kept, only missing indices are written.
  Use -Rebuild to overwrite, -DryRun to only print the plan.

  Examples:
    powershell -File import-hoi4-voices.ps1 -DryRun
    powershell -File import-hoi4-voices.ps1
    powershell -File import-hoi4-voices.ps1 -Rebuild -PerFolder 8
#>
param(
    [string]$Hoi4Dir = "",
    [string]$AssetsDir = "",
    [int]$PerFolder = 10,
    [switch]$Rebuild,
    [switch]$DryRun
)

$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sub  = Split-Path -Parent $here
$proj = Split-Path -Parent $sub
$game = Split-Path -Parent $proj
$androidRoot = Split-Path -Parent $game

if ([string]::IsNullOrEmpty($Hoi4Dir)) { $Hoi4Dir = $env:HOI4_DIR }
if ([string]::IsNullOrEmpty($Hoi4Dir) -or -not (Test-Path -LiteralPath $Hoi4Dir)) {
    throw "Hoi4Dir not found. Pass -Hoi4Dir <HOI4 install dir> (or set HOI4_DIR)"
}

if ([string]::IsNullOrEmpty($AssetsDir)) {
    $root = if ($env:AOH_PACKAGES_DIR) { $env:AOH_PACKAGES_DIR } else { Join-Path $androidRoot "GameCivs" }
    if (Test-Path -LiteralPath $root) {
        # prefer the package that actually ships the ArmyClickSoundManager resources
        $cand = @(Get-ChildItem -LiteralPath $root -Directory | Where-Object {
            (Test-Path -LiteralPath (Join-Path $_.FullName "assets\audio\sfx\army_click")) -and
            (Test-Path -LiteralPath (Join-Path $_.FullName "assets\game\civilizations"))
        }) | Sort-Object Name | Select-Object -First 1
        if (-not $cand) {
            $cand = @(Get-ChildItem -LiteralPath $root -Directory | Where-Object {
                (Test-Path -LiteralPath (Join-Path $_.FullName "assets\game\civilizations")) -and
                (Test-Path -LiteralPath (Join-Path $_.FullName "assets\audio\sfx"))
            }) | Sort-Object Name | Select-Object -First 1
        }
        if ($cand) { $AssetsDir = Join-Path $cand.FullName "assets" }
    }
}
if ([string]::IsNullOrEmpty($AssetsDir) -or -not (Test-Path -LiteralPath $AssetsDir)) {
    throw "AssetsDir not found. Pass -AssetsDir <...>\assets"
}

$ffmpeg = (Get-Command ffmpeg -ErrorAction SilentlyContinue).Source
if (-not $ffmpeg) { throw "ffmpeg not found in PATH" }

Write-Host "[import] HOI4   : $Hoi4Dir"
Write-Host "[import] assets  : $AssetsDir"
Write-Host "[import] perDir  : $PerFolder  rebuild=$($Rebuild.IsPresent)  dryRun=$($DryRun.IsPresent)"

$sfxRoot = Join-Path $AssetsDir "audio\sfx"
if (-not (Test-Path -LiteralPath $sfxRoot)) { throw "missing $sfxRoot" }

$script:tmpDir = Join-Path $env:TEMP ("armyvoice_ogg_" + [Guid]::NewGuid().ToString("N"))
New-Item -ItemType Directory -Force -Path $script:tmpDir | Out-Null
$script:convCache = @{}

# ------------------------------------------------------------------ helpers

function Get-VoiceCategory([string]$name) {
    $n = $name.ToLowerInvariant()
    if ($n -match '_idle') { return "idle" }
    if ($n -match '_neutral') { return "neutral" }
    if ($n -match '_positive') { return "positive" }
    if ($n -match '_retreat') { return "retreat" }
    return "other"
}

# Folder keys must be plain ASCII for the game FileHandle / zip pipeline;
# non-ASCII names (e.g. localized religions) fall back to the numeric index,
# which ArmyVoice tries right after the name.
function Get-FolderKey([string]$name, [int]$index) {
    if (-not [string]::IsNullOrEmpty($name) -and $name -match '^[A-Za-z0-9_.-]+$') { return $name }
    return [string]$index
}

function Select-Balanced($files, [int]$max) {
    $buckets = @{ idle = @(); neutral = @(); positive = @(); retreat = @(); other = @() }
    foreach ($f in $files) {
        $k = Get-VoiceCategory $f.Name
        $buckets[$k] = @($buckets[$k]) + $f
    }
    $order = @("idle", "neutral", "positive", "retreat", "other")
    $out = @()
    $idx = 0
    while ($out.Count -lt $max) {
        $added = $false
        foreach ($k in $order) {
            if ($out.Count -ge $max) { break }
            if ($idx -lt @($buckets[$k]).Count) { $out += @($buckets[$k])[$idx]; $added = $true }
        }
        if (-not $added) { break }
        $idx++
    }
    return $out
}

function Convert-ToOgg([string]$src) {
    if ($script:convCache.ContainsKey($src)) { return $script:convCache[$src] }
    $hash = (Get-FileHash -LiteralPath $src -Algorithm MD5).Hash
    $out = Join-Path $script:tmpDir ($hash + ".ogg")
    if (-not (Test-Path -LiteralPath $out)) {
        & $script:ffmpeg -hide_banner -loglevel error -y -i $src -ac 1 -ar 44100 -c:a libvorbis -q:a 4 $out
        if ($LASTEXITCODE -ne 0 -or -not (Test-Path -LiteralPath $out)) {
            Write-Host ("[import] ffmpeg failed: " + $src)
            return $null
        }
    }
    $script:convCache[$src] = $out
    return $out
}

$script:written = 0
$script:kept = 0

function Write-FolderVoices([string]$relDir, $files) {
    if (-not $files -or @($files).Count -eq 0) { return }
    $picked = @(Select-Balanced -files $files -max $PerFolder)
    $dstDir = Join-Path $sfxRoot $relDir
    if (-not $DryRun) { New-Item -ItemType Directory -Force -Path $dstDir | Out-Null }
    for ($i = 0; $i -lt $picked.Count; $i++) {
        $dst = Join-Path $dstDir ("$i.ogg")
        if ((Test-Path -LiteralPath $dst) -and -not $Rebuild) { $script:kept++; continue }
        if ($DryRun) { continue }
        $ogg = Convert-ToOgg $picked[$i].FullName
        if (-not $ogg) { continue }
        Copy-Item -LiteralPath $ogg -Destination $dst -Force
        $script:written++
    }
    if ($DryRun) { Write-Host ("[plan] {0,-40} {1} file(s)" -f $relDir, $picked.Count) }
}

# ------------------------------------------------------- game data (tags)

$civDir = Join-Path $AssetsDir "game\civilizations"
$civTags = @{}
if (Test-Path -LiteralPath $civDir) {
    foreach ($f in (Get-ChildItem -LiteralPath $civDir -File -Filter *.json)) {
        try {
            $j = [IO.File]::ReadAllText($f.FullName, [Text.Encoding]::UTF8) | ConvertFrom-Json
            $t = ([string]$j.Tag).Trim().ToLowerInvariant()
            if ($t.Length -gt 0 -and -not $civTags.ContainsKey($t)) {
                $civTags[$t] = [pscustomobject]@{ Tag = $t; Religion = [int]$j.ReligionID; Group = [int]$j.GroupID }
            }
        } catch { }
    }
}
Write-Host ("[import] civ tags: {0}" -f $civTags.Count)

$religionNames = @()
$relPath = Join-Path $AssetsDir "game\Religions.json"
if (Test-Path -LiteralPath $relPath) {
    $relText = [IO.File]::ReadAllText($relPath, [Text.Encoding]::UTF8)
    foreach ($m in [regex]::Matches($relText, '(?m)^\s*Name\s*:\s*"?([^,"\r\n]+)"?\s*,?')) {
        $v = $m.Groups[1].Value.Trim()
        if ($v.Length -gt 0) { $religionNames += $v }
    }
}
Write-Host ("[import] religions: {0}" -f $religionNames.Count)

$cultureNames = @()
$grpPath = Join-Path $AssetsDir "game\groups\civsGroups.txt"
if (Test-Path -LiteralPath $grpPath) {
    $grpText = [IO.File]::ReadAllText($grpPath, [Text.Encoding]::UTF8)
    foreach ($p in $grpText.Split(";")) {
        $v = $p.Trim()
        if ($v.Length -gt 0) { $cultureNames += $v }
    }
}
Write-Host ("[import] cultures : {0}" -f $cultureNames.Count)

# ------------------------------------------------- HOI4 voice scan

$byTag = @{}
if (-not (Test-Path -LiteralPath $Hoi4Dir)) { throw "HOI4 dir not found: $Hoi4Dir" }
$roots = @((Join-Path $Hoi4Dir "dlc"), (Join-Path $Hoi4Dir "integrated_dlc"), (Join-Path $Hoi4Dir "sound"))
foreach ($root in $roots) {
    if (-not (Test-Path -LiteralPath $root)) { continue }
    foreach ($f in (Get-ChildItem -LiteralPath $root -Recurse -Filter *.wav -File -ErrorAction SilentlyContinue)) {
        $dirName = $f.Directory.Name.ToLowerInvariant()
        if ($dirName -notmatch '^[a-z]{3}(_[a-z]+)?$') { continue }
        $tag = $dirName.Split("_")[0]
        if (-not $byTag.ContainsKey($tag)) { $byTag[$tag] = New-Object System.Collections.Generic.List[object] }
        $byTag[$tag].Add($f)
    }
}
Write-Host ("[import] hoi4 voice tags: {0}" -f $byTag.Count)

$usedTags = @($byTag.Keys | Where-Object { $civTags.ContainsKey($_) } | Sort-Object)
$skipped  = @($byTag.Keys | Where-Object { -not $civTags.ContainsKey($_) } | Sort-Object)
Write-Host ("[import] matched tags ({0}): {1}" -f $usedTags.Count, ($usedTags -join ","))
if ($skipped.Count -gt 0) { Write-Host ("[import] no civ in package ({0}): {1}" -f $skipped.Count, ($skipped -join ",")) }

# ------------------------------------------------- 1) army_click/<civTag>

foreach ($tag in $usedTags) {
    $tagFiles = @($byTag[$tag] | Sort-Object FullName)
    $tagDir = "army_click\" + $tag
    Write-FolderVoices -relDir $tagDir -files $tagFiles
}

# keep existing custom tags untouched; only ensure legacy default/common still work.

# ------------------------------------------------- 2) army_religions/<name>

$relPool = @{}
foreach ($tag in $usedTags) {
    $r = $civTags[$tag].Religion
    if (-not $relPool.ContainsKey($r)) { $relPool[$r] = New-Object System.Collections.Generic.List[object] }
    foreach ($f in @($byTag[$tag] | Sort-Object FullName)) { $relPool[$r].Add($f) }
}
foreach ($r in ($relPool.Keys | Sort-Object)) {
    $name = $null
    if ($r -ge 0 -and $r -lt $religionNames.Count) { $name = $religionNames[$r] }
    $key = Get-FolderKey $name ([int]$r)
    $poolDir = "army_religions\" + $key
    $poolFiles = $relPool[$r].ToArray()
    Write-FolderVoices -relDir $poolDir -files $poolFiles
}

# ------------------------------------------------- 3) army_culture/<group>

$culPool = @{}
foreach ($tag in $usedTags) {
    $g = $civTags[$tag].Group
    if (-not $culPool.ContainsKey($g)) { $culPool[$g] = New-Object System.Collections.Generic.List[object] }
    foreach ($f in @($byTag[$tag] | Sort-Object FullName)) { $culPool[$g].Add($f) }
}
foreach ($g in ($culPool.Keys | Sort-Object)) {
    $name = $null
    if ($g -ge 0 -and $g -lt $cultureNames.Count) { $name = $cultureNames[$g] }
    $key = Get-FolderKey $name ([int]$g)
    $poolDir = "army_culture\" + $key
    $poolFiles = $culPool[$g].ToArray()
    Write-FolderVoices -relDir $poolDir -files $poolFiles
}

# ------------------------------------------------- 4) army_default

$defaultSrc = Join-Path $sfxRoot "army_click\default"
$defaultFiles = @()
if (Test-Path -LiteralPath $defaultSrc) {
    $defaultFiles = @(Get-ChildItem -LiteralPath $defaultSrc -File -Filter *.ogg | Sort-Object Name)
}
if ($defaultFiles.Count -gt 0) {
    $dstDir = Join-Path $sfxRoot "army_default"
    if (-not $DryRun) { New-Item -ItemType Directory -Force -Path $dstDir | Out-Null }
    for ($i = 0; $i -lt [Math]::Min($PerFolder, $defaultFiles.Count); $i++) {
        $dst = Join-Path $dstDir ("$i.ogg")
        if ((Test-Path -LiteralPath $dst) -and -not $Rebuild) { $script:kept++; continue }
        if ($DryRun) { continue }
        $ogg = Convert-ToOgg $defaultFiles[$i].FullName
        if (-not $ogg) { continue }
        Copy-Item -LiteralPath $ogg -Destination $dst -Force
        $script:written++
    }
    if ($DryRun) { Write-Host ("[plan] army_default (re-encoded from army_click\default): {0} file(s)" -f $defaultFiles.Count) }
}
else {
    $all = @()
    foreach ($tag in $usedTags) { $all += @($byTag[$tag] | Sort-Object FullName) }
    Write-FolderVoices -relDir "army_default" -files $all
}

if (Test-Path -LiteralPath $script:tmpDir) { Remove-Item -LiteralPath $script:tmpDir -Recurse -Force }

Write-Host ("[import] done: written={0} kept={1}" -f $script:written, $script:kept)
