# PROJECT STATE

- Nom : (aucun projet actif — prêt pour un nouveau projet)
- Description : espace de travail commun où Claude (Claude Code / Cowork) et ChatGPT (Codex / ChatGPT Work) travaillent à tour de rôle. Quand l'un s'arrête, l'autre reprend exactement au même point grâce au dépôt (`.ai/HANDOFF.md` + historique Git).
- Pour lancer un projet : dire « nouveau projet : <description> » ; l'agent suit `.ai/NEW_PROJECT.md`.
- Stack : à définir au lancement du projet.
- Commandes : `scripts/checkpoint.ps1` (sauvegarder), `scripts/resume.ps1` (reprendre). Build/test/lint : voir `AI_WORKFLOW.md` §8.
- État : protocole de relais prêt (checkpoints continus, reprise après interruption, procédure de nouveau projet). Aucun code applicatif.
- Dépôt : https://github.com/mtmarketshop/Claude-Chatgpt (branche `main`).
