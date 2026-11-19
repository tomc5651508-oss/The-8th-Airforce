# The 8th Airforce installer: copies "mod\The 8th Airforce" into <IL-2 Great Battles>\MODS (JSGME folder).
# Usage: Install The 8th Airforce.bat [game folder]
param([string]$Game = "")
$ErrorActionPreference = "Stop"
$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$src = Join-Path $here "mod\The 8th Airforce"
if (-not (Test-Path $src)) { $src = Join-Path $here "The 8th Airforce" }
if (-not (Test-Path $src)) { Write-Host "The 8th Airforce folder not found next to this installer."; exit 1 }

$bank = Join-Path $src "data\Audio\MasterBank.bank"
if ((Get-Item $bank).Length -lt 100000) {
    Write-Host "MasterBank.bank is a Git LFS pointer, not the sound bank."
    Write-Host "Download 'The 8th Airforce <version>.zip' from the GitHub Releases page, or clone with Git LFS."
    exit 1
}

function Find-Game {
    $name = "IL-2 Sturmovik Battle of Stalingrad"
    $roots = @()
    foreach ($k in "HKCU:\Software\Valve\Steam", "HKLM:\SOFTWARE\WOW6432Node\Valve\Steam") {
        try { $p = (Get-ItemProperty $k -ErrorAction Stop).SteamPath; if (-not $p) { $p = (Get-ItemProperty $k).InstallPath }; if ($p) { $roots += $p } } catch {}
    }
    $libs = @()
    foreach ($r in $roots) {
        $libs += $r
        $vdf = Join-Path $r "steamapps\libraryfolders.vdf"
        if (Test-Path $vdf) {
            foreach ($m in [regex]::Matches((Get-Content $vdf -Raw), '"path"\s+"([^"]+)"')) { $libs += $m.Groups[1].Value -replace '\\\\', '\' }
        }
    }
    foreach ($l in ($libs | Select-Object -Unique)) {
        $g = Join-Path $l "steamapps\common\$name"
        if (Test-Path (Join-Path $g "bin\game")) { return $g }
    }
    return $null
}

if (-not $Game) { $Game = Find-Game }
if (-not $Game -or -not (Test-Path (Join-Path $Game "bin\game"))) {
    $Game = Read-Host "IL-2 Great Battles folder (the one with bin and data in it)"
}
if (-not (Test-Path (Join-Path $Game "bin\game"))) { Write-Host "Not an IL-2 Great Battles folder: $Game"; exit 1 }

$mods = Join-Path $Game "MODS"
$dst = Join-Path $mods "The 8th Airforce"
if (Get-ChildItem (Join-Path $mods "!INSTLOGS") -Filter "The 8th Airforce*" -ErrorAction SilentlyContinue) {
    Write-Host "The 8th Airforce is enabled in JSGME. Disable it in JSGME first, then run this installer again."
    exit 1
}
New-Item -ItemType Directory -Force $mods | Out-Null
if (Test-Path $dst) { Remove-Item -Recurse -Force $dst }
Write-Host "Copying to $dst ..."
Copy-Item -Recurse $src $dst
$n = (Get-ChildItem -Recurse -File $dst).Count
Write-Host "Done: $n files in MODS\The 8th Airforce."
Write-Host "Next: enable 'The 8th Airforce' in JSGME (do not enable Jungle Hawks at the same time), then start a new"
Write-Host "Normandy or Bodenplatte career."
