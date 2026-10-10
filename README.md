# Claude-Chatgpt

Dépôt partagé entre plusieurs agents IA (Claude Code, OpenAI Codex, ChatGPT Work, Claude Cowork). **GitHub est la mémoire commune** : on peut démarrer une tâche avec un agent et la reprendre exactement au même point avec un autre.

## Utilisation rapide

- **Lancer un projet** : dire à Claude ou à ChatGPT « nouveau projet : <description> » (procédure : [`.ai/NEW_PROJECT.md`](.ai/NEW_PROJECT.md)).
- **Un agent s'arrête, l'autre reprend** : « Lis AGENTS.md (ChatGPT/Codex) ou CLAUDE.md (Claude) et reprends exactement où l'autre s'est arrêté. »
- Reprise : `powershell -File scripts/resume.ps1`
- Sauvegarde du travail en cours : `powershell -File scripts/checkpoint.ps1 -Agent "Claude" -Message "résumé"`

## Pour un agent (ou un humain) qui reprend le travail

1. `AGENTS.md` (Codex) ou `CLAUDE.md` (Claude Code)
2. [`AI_WORKFLOW.md`](AI_WORKFLOW.md) — protocole commun
3. [`.ai/HANDOFF.md`](.ai/HANDOFF.md) — état exact et **EXACT NEXT ACTION**
4. [`.ai/TASKS.md`](.ai/TASKS.md), [`.ai/DECISIONS.md`](.ai/DECISIONS.md), [`.ai/SESSION_LOG.md`](.ai/SESSION_LOG.md)
5. [`PROJECT_STATE.md`](PROJECT_STATE.md) — description du projet
