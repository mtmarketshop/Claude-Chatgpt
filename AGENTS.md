# AGENTS.md — instructions pour Codex et agents compatibles

Avant toute modification importante, lis **obligatoirement** :

1. `AI_WORKFLOW.md` (protocole commun — source unique des règles)
2. `.ai/HANDOFF.md` (état exact + EXACT NEXT ACTION)
3. `.ai/TASKS.md`
4. `.ai/DECISIONS.md`

Puis lance `git fetch`, `git status`, `git log --oneline -10` et compare avec le handoff. S'ils concordent, reprends directement à **EXACT NEXT ACTION**.

Avant de t'arrêter : mets à jour `.ai/HANDOFF.md`, `.ai/TASKS.md`, `.ai/SESSION_LOG.md`, commit et push (voir `AI_WORKFLOW.md` §5).

Ne duplique pas les règles ici : `AI_WORKFLOW.md` fait foi.
