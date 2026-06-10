$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
$sourceSkill = Join-Path $projectRoot 'skill-source\math-learning-coach'
$installedSkill = 'C:\Users\xiao\.codex\skills\math-learning-coach'

Copy-Item -Force -LiteralPath (Join-Path $sourceSkill 'SKILL.md') -Destination (Join-Path $installedSkill 'SKILL.md')
Copy-Item -Force -LiteralPath (Join-Path $sourceSkill 'agents\openai.yaml') -Destination (Join-Path $installedSkill 'agents\openai.yaml')

Write-Host 'Published math-learning-coach to Codex skills directory.'

