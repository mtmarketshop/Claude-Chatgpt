# CLAUDE.md — instructions pour Claude Code

@AI_WORKFLOW.md
@.ai/HANDOFF.md
@.ai/TASKS.md
@.ai/DECISIONS.md
@PROJECT_STATE.md

Les imports ci-dessus chargent le protocole commun et l'état courant. Si les imports ne sont pas résolus, lis ces fichiers à la main avant toute modification importante.

Au démarrage : `git fetch`, `git status`, `git log --oneline -10`, compare avec le handoff, puis reprends directement à **EXACT NEXT ACTION**. Avant de t'arrêter : mets à jour `.ai/*`, commit et push (`AI_WORKFLOW.md` §5).

Ne duplique pas les règles ici : `AI_WORKFLOW.md` fait foi.

**Si l'utilisateur dit « reprend » / « reprends »** (même en un seul mot) : exécute `scripts/resume.ps1`, lis `.ai/HANDOFF.md`, garde le travail non fini de l'autre agent (`AI_WORKFLOW.md` §10) et continue à **EXACT NEXT ACTION** sans poser de question.
**Si l'utilisateur dit « nouveau projet : ... »** : suis `.ai/NEW_PROJECT.md`.
