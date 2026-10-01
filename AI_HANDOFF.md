# AI HANDOFF

## Dernière IA
Claude

## Date
2026-10-01

## Branche Git
main (reliée à origin/main : https://github.com/mtmarketshop/Claude-Chatgpt)

## Dernier commit
0542202 Initial commit (+ commit docs de handoff)

## Objectif actuel
Mettre en place le workflow de collaboration Claude ↔ ChatGPT. Le projet applicatif lui-même n'est pas encore défini.

## Travail terminé
- État du dossier analysé : il ne contient que `README.md` (titre `# Claude-Chatgpt`).
- Création de `AI_HANDOFF.md`, `PROJECT_STATE.md` et `TODO.md`.

## Travail en cours
Rien.

## Fichiers modifiés
- `AI_HANDOFF.md`, `PROJECT_STATE.md`, `TODO.md` (nouveaux)

## Décisions techniques
Dépôt relié : `git init` + remote `origin` (https://github.com/mtmarketshop/Claude-Chatgpt). Le distant ne contenait que `README.md`; aucun historique perdu.

## Bugs / problèmes connus
- Le dossier n'est pas relié à GitHub : impossible de `git pull` / `git push`.
- Aucun code ni description du projet à reprendre.

## Tests effectués
Aucun (pas de code).

## À ne pas refaire
- Ne pas recréer ces fichiers de suivi.

## PROCHAINE ACTION
Le dépôt est relié et synchronisé. Demander à l'utilisateur la nature du projet (objectif, stack), puis la renseigner dans `README.md` et `PROJECT_STATE.md` et créer le squelette du projet.

## Commande utile pour reprendre
```
git remote -v
git pull
```
