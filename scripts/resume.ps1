# Reprise : affiche l'etat reel du depot et le handoff pour continuer exactement ou l'autre agent s'est arrete.
# Usage : powershell -File scripts/resume.ps1
git fetch
git pull --ff-only
Write-Host "`n=== Branche ==="; git branch --show-current
Write-Host "`n=== Status ==="; git status --short
Write-Host "`n=== 10 derniers commits ==="; git log --oneline -10
Write-Host "`n=== Handoff ==="; Get-Content .ai/HANDOFF.md
