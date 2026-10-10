# DECISIONS

Uniquement les décisions importantes, susceptibles d'être rediscutées.

## D-001 — 2026-10-05 — Source unique des règles : AI_WORKFLOW.md
- Décision : `AI_WORKFLOW.md` contient toutes les règles ; `AGENTS.md` (Codex) et `CLAUDE.md` (Claude Code) ne font que renvoyer vers lui et vers `.ai/*`.
- Raison : éviter les règles dupliquées qui divergent.
- Conséquences : toute modification de règle se fait dans un seul fichier. `CLAUDE.md` utilise les imports `@fichier` ; Codex lit les fichiers via l'instruction d'`AGENTS.md`.
- Alternatives rejetées : dupliquer les règles dans chaque fichier (divergence garantie).

## D-002 — 2026-10-05 — Handoff déplacé dans `.ai/`
- Décision : `.ai/HANDOFF.md` est le handoff officiel ; `AI_HANDOFF.md` et `TODO.md` à la racine deviennent de simples renvois.
- Raison : conserver les fichiers existants sans créer deux sources de vérité.
- Conséquences : l'historique Git garde les anciens contenus.

## D-003 — 2026-10-10 — Checkpoints continus et reprise sur interruption brutale
- Décision : mise à jour du handoff + commit/push après chaque étape (`scripts/checkpoint.ps1`) ; reprise guidée par `scripts/resume.ps1` ; le travail non fini de l'autre agent est conservé et terminé.
- Raison : un agent peut s'arrêter sans pouvoir écrire son handoff final (limite d'usage, coupure). Seul ce qui est poussé survit.
- Conséquences : commits `checkpoint:` plus fréquents ; Git fait foi si le handoff est en retard.
- Alternatives rejetées : handoff uniquement en fin de session.

## D-004 — 2026-10-10 — Dépôt « prêt à lancer un projet »
- Décision : aucune stack ni projet prédéfini ; `.ai/NEW_PROJECT.md` décrit comment un agent initialise un nouveau projet à partir de « nouveau projet : <description> ».
- Raison : demande de l'utilisateur (dépôt prêt à l'emploi, stack non connue d'avance). Shopify/boutiques hors périmètre.
