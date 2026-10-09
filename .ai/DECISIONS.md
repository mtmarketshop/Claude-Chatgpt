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

## D-003 — 2026-10-10 — Laisser Shopify tel quel
- Décision explicite de l'utilisateur : ne pas modifier les huit fiches de diagnostic automobile.
- Les propositions restent consultatives. Le relais autorise la transmission du contexte, pas des corrections Shopify, un merge ou un déploiement.
