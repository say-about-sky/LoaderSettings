<#
  HotVarApi - apply event-trigger bridge patches to LoaderSettings\final-smali  (ASCII only)

  Rewrites three trigger methods so hot plugins can answer them live:

    aoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariable.outCondition(II)Z
    aoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableNot.outCondition(II)Z
    aoc/kingdoms/lukasz/events/triggers/EventTrigger_HasVariableCiv.outCondition(II)Z
        -> com.saysky.hotvar.HotVars.has(...) / hasCivTag(...)   (compiled from java\src)
        -> falls back to the vanilla variable list when no plugin claims the prefix

  These classes are not part of final-smali / pack-smali, so they are disassembled
  from the target package dex on demand (same trick as the ArmyVoice subproject).
#>
param(
    [string]$FinalSmali = "",
    [string]$PackageDir = "",
    [string]$Baksmali = "",
    [string]$JavaExe = ""
)

$ErrorActionPreference = "Stop"

$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sub = Split-Path -Parent $here
$proj = Split-Path -Parent $sub
$game = Split-Path -Parent $proj
$androidRoot = Split-Path -Parent $game

if ([string]::IsNullOrEmpty($FinalSmali)) { $FinalSmali = Join-Path $proj "final-smali" }
if ([string]::IsNullOrEmpty($Baksmali)) { $Baksmali = Join-Path $game ".tools\smali\baksmali-2.5.2.jar" }
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
Write-Host "[hotvar] final-smali: $FinalSmali"
Write-Host "[hotvar] package    : $PackageDir"

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
        $tmp = Join-Path $env:TEMP ("hotvar_" + [Guid]::NewGuid().ToString("N"))
        New-Item -ItemType Directory -Force -Path $tmp | Out-Null
        try {
            & $JavaExe -jar $Baksmali d $dex -o $tmp --classes $descriptor
            $src = Join-Path $tmp $relPath
            if (Test-Path -LiteralPath $src) {
                $dir = Split-Path -Parent $target
                New-Item -ItemType Directory -Force -Path $dir | Out-Null
                Copy-Item -LiteralPath $src -Destination $target -Force
                Write-Host "[hotvar] extracted $descriptor from $(Split-Path -Leaf $dex)"
                return $target
            }
        }
        finally {
            if (Test-Path -LiteralPath $tmp) { Remove-Item -LiteralPath $tmp -Recurse -Force }
        }
    }
    throw "baksmali could not extract class from any package dex: $descriptor"
}

# ---------- head hooks on the three trigger methods ----------
# The vanilla body is left intact: HotVars.eval(...) returns null when no plugin claims the
# variable string, and the trigger then runs its original logic (fall-through). No pack class
# copy is rewritten, so the hook works on any pack.
. (Join-Path $proj "tools\smali-hook.ps1")

$trig = 'Laoc/kingdoms/lukasz/events/triggers/'
$targets = @(
    @{ Rel = "aoc\kingdoms\lukasz\events\triggers\EventTrigger_HasVariable.smali";
       Desc = $trig + "EventTrigger_HasVariable;"; Sig = "outCondition(II)Z"; Flip = $false; Civ = $false },
    @{ Rel = "aoc\kingdoms\lukasz\events\triggers\EventTrigger_HasVariableNot.smali";
       Desc = $trig + "EventTrigger_HasVariableNot;"; Sig = "outCondition(II)Z"; Flip = $true; Civ = $false },
    @{ Rel = "aoc\kingdoms\lukasz\events\triggers\EventTrigger_HasVariableCiv.smali";
       Desc = $trig + "EventTrigger_HasVariableCiv;"; Sig = "outCondition(II)Z"; Flip = $false; Civ = $true }
)

foreach ($t in $targets) {
    $file = Ensure-Class $t.Rel $t.Desc
    $cls = $t.Desc
    if ($t.Civ) {
        $body = @(
            ('    iget-object v{0}, p0, ' + $cls + '->civTAG:Ljava/lang/String;'),
            ('    iget-object v{1}, p0, ' + $cls + '->value:Ljava/lang/String;'),
            '    invoke-static {v{0}, v{1}}, Lcom/saysky/hotvar/HotVars;->evalCivTag(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Boolean;',
            '    move-result-object v{0}',
            '    if-eqz v{0}, {L}',
            '    invoke-virtual {v{0}}, Ljava/lang/Boolean;->booleanValue()Z',
            '    move-result v{0}',
            '    return v{0}',
            '{L}'
        )
        $tempCount = 2
    } else {
        $body = @(
            ('    iget-object v{0}, p0, ' + $cls + '->value:Ljava/lang/String;'),
            '    invoke-static {p1, v{0}}, Lcom/saysky/hotvar/HotVars;->eval(ILjava/lang/String;)Ljava/lang/Boolean;',
            '    move-result-object v{0}',
            '    if-eqz v{0}, {L}',
            '    invoke-virtual {v{0}}, Ljava/lang/Boolean;->booleanValue()Z',
            '    move-result v{0}'
        )
        if ($t.Flip) { $body += '    xor-int/lit8 v{0}, v{0}, 0x1' }
        $body += @('    return v{0}', '{L}')
        $tempCount = 1
    }
    $changed = Add-HeadHook -File $file -Sig $t.Sig -Marker "Lcom/saysky/hotvar/HotVars;->eval" -Body $body -TempCount $tempCount
    if ($changed) {
        Write-Host ("[hotvar] {0}: head hook -> HotVars" -f (Split-Path -Leaf $t.Rel))
    }
}

Write-Host "[hotvar] event trigger bridge applied"
