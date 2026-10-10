# Checkpoint rapide : sauvegarde tout le travail en cours sur GitHub.
# Usage : powershell -File scripts/checkpoint.ps1 -Agent "Claude" -Message "ce qui vient d'etre fait"
param(
  [Parameter(Mandatory = $true)][string]$Agent,
  [string]$Message = "travail en cours"
)
$ErrorActionPreference = "Stop"
git add -A
git diff --cached --quiet
if ($LASTEXITCODE -eq 0) { Write-Host "Rien a sauvegarder."; exit 0 }
git commit -m "checkpoint: $Message [$Agent]"
git push -u origin HEAD
