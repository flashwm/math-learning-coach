$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
$sourceSkill = Join-Path $projectRoot 'skill-source\math-learning-coach'
$installedSkill = 'C:\Users\xiao\.codex\skills\math-learning-coach'

Copy-Item -Force -LiteralPath (Join-Path $installedSkill 'SKILL.md') -Destination (Join-Path $sourceSkill 'SKILL.md')
Copy-Item -Force -LiteralPath (Join-Path $installedSkill 'agents\openai.yaml') -Destination (Join-Path $sourceSkill 'agents\openai.yaml')

Write-Host 'Synced installed math-learning-coach back to project source.'

