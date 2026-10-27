# Shared smali "head hook" injector (ASCII only).
#
# Goal: add a handful of instructions at the head of a method so that the hook can decide
# the result and return early; otherwise the ORIGINAL method body runs unchanged
# (fall-through). This keeps every pack-specific reference inside the pack's own bytecode,
# so the patch never has to ship a modified copy of a vanilla body.
#
# Usage:
#   . "$proj\tools\smali-hook.ps1"
#   Add-HeadHook -File $smali -Sig "execute(Ljava/lang/String;)V" `
#                -Marker "Lcom/saysky/web/WebConsole;->handle" `
#                -Body @('    invoke-static {p0}, ...', '    move-result v{0}', '    if-eqz v{0}, {L}', '    return-void', '{L}')

function Get-ParamWords([string]$sig) {
    $lp = $sig.IndexOf('(')
    $rp = $sig.IndexOf(')')
    if ($lp -lt 0 -or $rp -lt 0) { throw "bad signature: $sig" }
    $a = $sig.Substring($lp + 1, $rp - $lp - 1)
    $n = 0
    $i = 0
    while ($i -lt $a.Length) {
        $c = $a[$i]
        if ($c -eq '[') {
            while ($i -lt $a.Length -and $a[$i] -eq '[') { $i++ }
            if ($i -lt $a.Length -and $a[$i] -eq 'L') {
                while ($i -lt $a.Length -and $a[$i] -ne ';') { $i++ }
            }
            $i++
            $n = $n + 1
            continue
        }
        if ($c -eq 'L') {
            while ($i -lt $a.Length -and $a[$i] -ne ';') { $i++ }
            $i++
            $n = $n + 1
            continue
        }
        if ($c -eq 'J' -or $c -eq 'D') { $i++; $n = $n + 2; continue }
        $i++
        $n = $n + 1
    }
    return $n
}

function Format-HookLine([string]$line, [string[]]$temps, [string]$label) {
    $s = $line.Replace("{L}", $label)
    for ($k = 0; $k -lt $temps.Count; $k++) {
        $s = $s.Replace("{" + $k + "}", $temps[$k])
    }
    return $s
}

# Returns $true when the hook was injected, $false when it was already there (or method has no body).
function Add-HeadHook {
    param(
        [Parameter(Mandatory = $true)][string]$File,
        [Parameter(Mandatory = $true)][string]$Sig,
        [Parameter(Mandatory = $true)][string]$Marker,
        [Parameter(Mandatory = $true)][string[]]$Body,
        [int]$TempCount = 1
    )

    $lines = New-Object System.Collections.Generic.List[string]
    foreach ($x in [IO.File]::ReadAllLines($File, [Text.Encoding]::UTF8)) { $lines.Add($x) }
    $text = [string]::Join("`n", [string[]]$lines)
    if ($text.Contains($Marker)) {
        Write-Host ("[hook] {0} already hooked, skip" -f $Sig)
        return $false
    }

    $s = -1
    for ($i = 0; $i -lt $lines.Count; $i++) {
        if ($lines[$i].StartsWith(".method ") -and ($lines[$i].Split(' ')[-1] -eq $Sig)) { $s = $i; break }
    }
    if ($s -lt 0) { throw ("hook: method not found {0} in {1}" -f $Sig, $File) }
    $e = -1
    for ($i = $s; $i -lt $lines.Count; $i++) { if ($lines[$i].StartsWith(".end method")) { $e = $i; break } }
    if ($e -lt 0) { throw ("hook: method block incomplete {0}" -f $Sig) }
    if ($lines[$s] -match ' abstract ') {
        Write-Host ("[hook] {0} is abstract, skip" -f $Sig)
        return $false
    }

    $rd = -1
    $mode = ""
    $n = 0
    for ($i = $s + 1; $i -lt $e; $i++) {
        $t = $lines[$i].Trim()
        if ($t -match '^\.registers\s+(\d+)$') { $rd = $i; $mode = "registers"; $n = [int]$Matches[1]; break }
        if ($t -match '^\.locals\s+(\d+)$') { $rd = $i; $mode = "locals"; $n = [int]$Matches[1]; break }
    }
    if ($rd -lt 0) { throw ("hook: no .registers/.locals in {0}" -f $Sig) }

    $pw = Get-ParamWords $Sig
    if ($lines[$s] -notmatch '\sstatic(\s|$)') { $pw = $pw + 1 }

    if ($mode -eq "registers") {
        $base = $n - $pw
        $lines[$rd] = ("    .registers {0}" -f ($n + $TempCount))
    } else {
        $base = $n
        $lines[$rd] = ("    .locals {0}" -f ($n + $TempCount))
    }
    if ($base -lt 0) { throw ("hook: register math failed for {0}" -f $Sig) }
    # invoke-static uses 4-bit register lists: params must stay inside v0..v15
    $highest = ($base + $TempCount) + $pw - 1
    if ($highest -gt 15) {
        throw ("hook: {0} would need v{1} (>v15), refuse to inject" -f $Sig, $highest)
    }

    $temps = @()
    for ($k = 0; $k -lt $TempCount; $k++) { $temps += [string]($base + $k) }
    $label = ":hook_" + ($Sig -replace '[^A-Za-z0-9]', '_')

    $ins = $rd + 1
    for ($i = $rd + 1; $i -lt $e; $i++) {
        $t = $lines[$i].Trim()
        if ($t -eq "") { continue }
        if ($t -eq ".prologue" -or $t.StartsWith(".line ")) { $ins = $i + 1; continue }
        break
    }

    $add = @()
    foreach ($b in $Body) { $add += (Format-HookLine $b $temps $label) }
    $lines.InsertRange($ins, [string[]]$add)

    [IO.File]::WriteAllLines($File, [string[]]$lines, (New-Object Text.UTF8Encoding($false)))
    Write-Host ("[hook] {0}: injected ({1} insn, temp {2})" -f $Sig, $add.Count, ($temps -join ","))
    return $true
}
