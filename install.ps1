<#
.SYNOPSIS
  LoaderSettings(伪3D地图补丁)一键安装:合并 dex 进解包目录 + 覆盖 gfx/cities2 资源。

.DESCRIPTION
  1) 调 merge-dex.ps1 把 out\classes.dex 前置为 <Folder>\classes.dex
     (原 classes*.dex 整体顺移一位,自动备份到同级 *_dexbak_* 目录);
  2) -EditSettings 时给 <Folder>\assets\settings\Settings.txt 补一行 MAP_TILT: true,
     (可选:MAP_TILT 字段默认值就是 true,不补也默认开启;游戏设置菜单内可开关)。
  注:地名图标功能已按需求移除,不再覆盖 assets\gfx\cities2 资源。
  合并完成后请自行重打包 + 签名,冷启动生效。

.PARAMETER Folder
  解包后的 APK 目录(必须含 classes*.dex),例:
  "<unpacked apk dir>"

.PARAMETER SkipDex
  不合并 dex(仅用于查看/调试)。

.PARAMETER EditSettings
  给 assets\settings\Settings.txt 插入 MAP_TILT: true(本体指令的原要求;默认不加)。

.EXAMPLE
  .\install.ps1 -Folder "<unpacked apk dir>"
#>
param(
  [Parameter(Mandatory = $true)][string]$Folder,
  [switch]$SkipDex,
  [switch]$EditSettings
)

$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$root = Split-Path -Parent $here                              # 游戏根(game.jar 所在目录)
$dex  = Join-Path $here "out\classes.dex"
$tgt  = (Resolve-Path -LiteralPath $Folder).Path

if (-not (Test-Path -LiteralPath $dex)) {
  Write-Host "[i] out\classes.dex 不存在,先执行 build-dex.bat ..."
  & (Join-Path $here "build-dex.bat")
  if (-not (Test-Path -LiteralPath $dex)) { throw "构建失败:缺少 $dex" }
}

if (-not $SkipDex) {
  Write-Host "[1/3] 合并补丁 dex(前置到 classes.dex)..."
  Write-Host "[!] 本 dex 已包含 Quick Actions(LPA):不要再前置旧的 LPA 补丁 dex,也不要同时启用 HotPluginLoader 的 LongPressMoveArmy 插件。"
  & (Join-Path $root "merge-dex.ps1") -Folder $tgt -PatchDex $dex
  if ($LASTEXITCODE -ne 0) { throw "merge-dex.ps1 执行失败:$LASTEXITCODE" }
}
else { Write-Host "[1/3] 跳过 dex 合并" }

Write-Host "[2/3] 图标资源:不适用(图标功能已移除,不覆盖 gfx/cities2)"

if ($EditSettings) {
  $sf = Join-Path $tgt "assets\settings\Settings.txt"
  if (Test-Path -LiteralPath $sf) {
    $txt = [IO.File]::ReadAllText($sf, [Text.Encoding]::UTF8)
    if ($txt -notmatch "MAP_TILT") {
      $txt = [regex]::Replace($txt, "(?s)(\{\s*\r?\n)", ('$1' + "MAP_TILT: true,`r`n"), 1)
      [IO.File]::WriteAllText($sf, $txt, (New-Object Text.UTF8Encoding($false)))
      Write-Host "[3/3] Settings.txt 已加入 MAP_TILT: true"
    }
    else { Write-Host "[3/3] Settings.txt 已有 MAP_TILT,未改动" }
  }
  else { Write-Host "[3/3] 未找到 assets\settings\Settings.txt" }
}
else {
  Write-Host "[3/3] Settings.txt 未改动(默认即开启;如需显式写入用 -EditSettings)"
}

Write-Host ""
Write-Host "完成:补丁 dex 已前置。请重打包 + 签名后安装;类替换需冷启动生效。"
