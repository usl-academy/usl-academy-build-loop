<#
.SYNOPSIS
  Install the USL Academy Build Loop skills into Claude Code on Windows.

.DESCRIPTION
  By default, creates a directory junction for each skill under
  %USERPROFILE%\.claude\skills\. Junctions work without admin rights and
  behave like symlinks for directory contents, so edits to this repo show
  up live in Claude Code.

  Re-run safely; existing entries are detected and you'll be prompted
  before they're replaced.

.PARAMETER Copy
  Hard-copy the skill directories instead of creating junctions.

.PARAMETER Project
  Install into <Project>\.claude\skills\ instead of the user-level
  ~/.claude/skills/.

.PARAMETER Uninstall
  Remove the installed skills.

.PARAMETER DryRun
  Show what would happen; change nothing.

.PARAMETER Force
  Overwrite existing entries without prompting.

.EXAMPLE
  .\install.ps1
  .\install.ps1 -Copy
  .\install.ps1 -Project C:\code\myapp
  .\install.ps1 -Uninstall
  .\install.ps1 -DryRun
#>

[CmdletBinding()]
param(
  [switch]$Copy,
  [string]$Project,
  [switch]$Uninstall,
  [switch]$DryRun,
  [switch]$Force
)

$ErrorActionPreference = 'Stop'

$Skills = @('build-loop','expertise-map','problem-validation','buyer-conversations','solution-mvp','business-model','offer-design','brand-strategy','landing-page','prd-generation','build-sequence','mcp-integration')


$RepoRoot  = Split-Path -Parent $MyInvocation.MyCommand.Path
$TargetBase = if ($Project) { Join-Path $Project '.claude' } else { Join-Path $env:USERPROFILE '.claude' }
$SkillsDir = Join-Path $TargetBase 'skills'
$Mode      = if ($Copy) { 'copy' } else { 'junction' }
$Action    = if ($Uninstall) { 'uninstall' } else { 'install' }

function Say($msg) { Write-Host $msg }

function Run-Cmd([scriptblock]$Block, [string]$Label) {
  if ($DryRun) {
    Say "  [dry-run] $Label"
  } else {
    & $Block | Out-Null
  }
}

function Confirm-Replace([string]$Path) {
  if ($Force -or $DryRun) { return $true }
  $ans = Read-Host "  exists: $Path - replace? [y/N]"
  return ($ans -match '^[yY]$')
}

function Install-One([string]$Name) {
  $src = Join-Path $RepoRoot $Name
  $dst = Join-Path $SkillsDir $Name

  if (-not (Test-Path -LiteralPath $src)) {
    Say "  skip: $Name (not found in repo at $src)"
    return
  }

  if (Test-Path -LiteralPath $dst) {
    if (-not (Confirm-Replace $dst)) {
      Say "  kept: $dst"
      return
    }
    Run-Cmd { Remove-Item -LiteralPath $dst -Recurse -Force } "remove $dst"
  }

  if ($Mode -eq 'junction') {
    Run-Cmd { New-Item -ItemType Junction -Path $dst -Target $src } "junction $dst -> $src"
    Say "  linked: $dst -> $src"
  } else {
    Run-Cmd { Copy-Item -LiteralPath $src -Destination $dst -Recurse } "copy $src -> $dst"
    Say "  copied: $src -> $dst"
  }
}

function Uninstall-One([string]$Name) {
  $dst = Join-Path $SkillsDir $Name
  if (Test-Path -LiteralPath $dst) {
    Run-Cmd { Remove-Item -LiteralPath $dst -Recurse -Force } "remove $dst"
    Say "  removed: $dst"
  } else {
    Say "  absent:  $dst"
  }
}


Say "USL Academy Build Loop - $Action ($Mode) into $SkillsDir"
if ($DryRun) { Say "  (dry-run: no changes will be made)" }


Run-Cmd { New-Item -ItemType Directory -Force -Path $SkillsDir } "mkdir $SkillsDir"


if ($Action -eq 'install') {
  foreach ($name in $Skills) { Install-One $name }
  Say ""
  Say "Done. Open Claude Code and run /build-loop to start (it guides the whole eight-stage pipeline). Or run any single stage like /problem-validation directly."
} else {
  foreach ($name in $Skills) { Uninstall-One $name }
  Say ""
  Say "Uninstall complete."
}
