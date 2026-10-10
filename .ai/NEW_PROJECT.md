# NEW PROJECT — démarrer un nouveau projet dans ce dépôt

Déclencheur : l'utilisateur dit « nouveau projet : <description> » (à Claude ou à ChatGPT/Codex).
Le premier agent exécute cette procédure ; l'autre reprendra via `.ai/HANDOFF.md`.

## 1. Cadrer (max 3 questions, jamais plus)

Ne poser que ce que la description ne donne pas : **objectif**, **livrable attendu**, **contraintes** (délai, budget, outils imposés).
Si l'utilisateur ne sait pas pour la stack : choisir et recommander une option simple, avec la raison en une phrase (voir `AI_WORKFLOW.md` §7). Ne pas demander la stack.

## 2. Initialiser le dépôt (dans cet ordre)

1. `PROJECT_STATE.md` : nom, objectif, stack, livrable, critères de réussite.
2. `README.md` : garder la section « Pour un agent qui reprend le travail » et ajouter une présentation du projet au-dessus.
3. `AI_WORKFLOW.md` §8 : commandes exactes build / test / lint dès qu'elles existent.
4. `.ai/TASKS.md` : découper en tâches T-xxx courtes (objectif + critère de fin), dépendances renseignées.
5. `.ai/DECISIONS.md` : consigner le choix de stack (D-xxx).
6. Créer l'Issue GitHub du projet et la lier dans `.ai/TASKS.md` (via l'interface web si `gh` est absent).
7. Branche : `feat/<id>-court` pour la première tâche.
8. `.ai/HANDOFF.md` : tâche courante + **EXACT NEXT ACTION** précise.
9. `scripts/checkpoint.ps1` : commit + push.

## 3. Ensuite

Travailler en petites étapes avec checkpoints (`AI_WORKFLOW.md` §5). À chaque arrêt, le handoff doit permettre à l'autre agent de reprendre sans poser de question.

## 4. Projet terminé ou abandonné

Marquer les tâches DONE/BLOCKED, mettre le résultat dans `PROJECT_STATE.md`, puis remettre le handoff à « aucun projet actif » pour pouvoir en lancer un autre.
