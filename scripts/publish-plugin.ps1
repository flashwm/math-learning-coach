$ErrorActionPreference = 'Stop'

$projectRoot = Split-Path -Parent $PSScriptRoot
$pluginSource = Join-Path $projectRoot 'plugin-source\math-learning-coach'
$installedPlugin = 'C:\Users\xiao\plugins\math-learning-coach'
$cachebusterScript = 'C:\Users\xiao\.codex\skills\.system\plugin-creator\scripts\update_plugin_cachebuster.py'

if (-not (Test-Path -LiteralPath $pluginSource)) {
  throw "Plugin source not found: $pluginSource"
}

if (Test-Path -LiteralPath $cachebusterScript) {
  python $cachebusterScript $pluginSource | Out-Host
}

New-Item -ItemType Directory -Force -Path $installedPlugin | Out-Null
Copy-Item -Recurse -Force -Path (Join-Path $pluginSource '*') -Destination $installedPlugin

Write-Host 'Published math-learning-coach plugin to personal Codex plugin directory.'
