# AI HANDOFF

Last updated: 2026-10-10
Agent: Claude Code (Sonnet 5.5)
Current task: T-002 terminé — aucun projet actif
GitHub issue: none
Current branch: main
Base branch: main
Last known commit: voir `git log --oneline -3` (`chore(ai): relais continu Claude/ChatGPT`)
Pull request: none

## Objective

Dépôt prêt à lancer un nouveau projet, où Claude et ChatGPT/Codex se relaient : quand l'un s'arrête, l'autre reprend exactement au même point.

## Current state

Protocole en place : `AI_WORKFLOW.md` (checkpoints §5, reprise §10), `AGENTS.md`, `CLAUDE.md`, `.ai/*` dont `.ai/NEW_PROJECT.md`, `scripts/checkpoint.ps1`, `scripts/resume.ps1`. Aucun code, aucune stack, aucun projet actif.

## Completed

- 2026-10-05 : protocole commun et fichiers de coordination (T-001).
- 2026-10-10 : checkpoints continus, règle de reprise après interruption, procédure de nouveau projet, scripts (T-002).

## In progress

Rien.

## Files changed

`AI_WORKFLOW.md`, `README.md`, `PROJECT_STATE.md`, `.ai/HANDOFF.md`, `.ai/TASKS.md`, `.ai/DECISIONS.md`, `.ai/SESSION_LOG.md` (modifiés) ; `.ai/NEW_PROJECT.md`, `scripts/checkpoint.ps1`, `scripts/resume.ps1` (nouveaux).

## Tests performed

Aucun test automatisé. Les scripts PowerShell n'ont pas encore été exécutés dans un vrai relais (T-003) : **non vérifié**.

## Problems / blockers

- Pas de `gh` CLI : Issues/PR à créer via l'interface web.
- Le push depuis cette machine dépend de l'authentification git de l'utilisateur : à vérifier.

## Decisions already made

- `AI_WORKFLOW.md` = unique source des règles (D-001) ; handoff dans `.ai/` (D-002) ; checkpoints continus (D-003) ; dépôt sans projet prédéfini (D-004).

## Important context

- Clone local : `C:\Users\PC\Desktop\Claude-Chatgpt` (Windows).
- L'utilisateur parle français, veut des échanges courts et un avis franc (✅/⚠️/❌), ne connaît pas la stack d'avance : recommander, ne pas demander.
- Shopify/boutiques : hors périmètre de ce dépôt.
- Ne jamais mettre de secrets dans le dépôt.

## EXACT NEXT ACTION

Attendre « nouveau projet : <description> » de l'utilisateur et suivre `.ai/NEW_PROJECT.md`. Si l'utilisateur veut d'abord valider le relais : T-003 (démarrer une petite tâche avec un agent, l'arrêter, la faire reprendre par l'autre, corriger le handoff selon ce qui manque).
