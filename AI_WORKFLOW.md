# AI_WORKFLOW — protocole commun à tous les agents

Valable pour Claude Code, OpenAI Codex, ChatGPT Work, Claude Cowork et tout futur agent.
**GitHub est la source de vérité.** Les conversations internes des agents ne sont PAS la mémoire du projet.

## 1. Démarrage de session (obligatoire, avant toute modification)

Lire, dans cet ordre :
1. `AGENTS.md` ou `CLAUDE.md`, puis ce fichier
2. `.ai/HANDOFF.md` (état exact + **EXACT NEXT ACTION**)
3. `.ai/TASKS.md`, `.ai/DECISIONS.md`
4. `PROJECT_STATE.md` (description du projet) et `README.md`

Puis vérifier la réalité Git :
```
git fetch
git status
git branch --show-current
git log --oneline -10
git diff            # si nécessaire
```
+ Issue / PR associées si accessibles.

- Si Git correspond au handoff : **reprendre directement à EXACT NEXT ACTION**. Pas de nouvelle analyse complète, pas de travail déjà marqué DONE refait (sauf vérification utile).
- Si Git diffère du handoff : **Git fait foi** pour les fichiers et commits. Analyser l'écart, puis corriger le handoff.
- Quand l'utilisateur dit « continue », « reprends », « reprends là où Claude/Codex s'est arrêté » : lire ce qui précède et poursuivre, sans redemander le contexte.

## 2. Règles de travail

- Continuer le travail existant, ne pas repartir de zéro.
- Conserver les changements des autres agents. Ne jamais supprimer automatiquement une modification inconnue.
- Interdit sans raison explicite et sans sauvegarde préalable : `git reset --hard`, `git clean -fd`, `git checkout -- <fichier>` sur des changements non identifiés, `push --force`.
- Conflit : comprendre les deux changements, garder les intentions des deux, noter la résolution dans le handoff.
- Ne jamais affirmer qu'une commande, un test, un déploiement ou une modif a réussi sans l'avoir réellement vérifié. Distinguer : **vérifié / probablement correct / non vérifié**.
- Plusieurs solutions : en recommander une, avec la raison en une phrase.
- Aucun secret (mot de passe, token, clé API, donnée sensible) dans le dépôt ni dans les handoffs : référencer le système sécurisé concerné.

## 3. Git

- Une tâche active = une branche active (`feat/<id>-court`, `fix/...`, `chore/...`). Travail parallèle = branches différentes, jamais deux agents sur la même branche/mêmes fichiers en même temps.
- Commits petits et cohérents. Préfixes : `feat:` `fix:` `refactor:` `test:` `docs:` `chore:` `checkpoint:`.
- Passage de relais : `chore(ai): checkpoint handoff`.
- Pousser la branche à chaque checkpoint si les permissions le permettent.
- Pas de merge/déploiement en production sans validation explicite de l'utilisateur.

## 4. Issues et Pull Requests

- Tâche importante = une Issue GitHub (objectif + critères de réussite), liée à la branche.
- La PR suit `.github/pull_request_template.md`. La PR décrit le changement à fusionner ; `.ai/HANDOFF.md` décrit l'état opérationnel. L'un ne remplace pas l'autre.

## 5. Fin de session / passage de relais

Avant de s'arrêter :
1. Mettre l'opération en cours dans un état cohérent si possible.
2. Lancer les tests possibles.
3. Mettre à jour `.ai/HANDOFF.md` (toujours), `.ai/TASKS.md`, `.ai/DECISIONS.md` (si décision importante), `.ai/SESSION_LOG.md` (session significative, append-only).
4. Commit (`chore(ai): checkpoint handoff` si pertinent) et push.
5. Question de contrôle : *« Si ma conversation disparaissait maintenant, un autre agent pourrait-il reprendre exactement à partir du dépôt ? »* Sinon, compléter le handoff.

## 6. Tests et validation

Après toute modification de code : identifier et lancer les tests/lint/typecheck/build pertinents (voir section 8). Consigner dans HANDOFF.md les commandes réellement lancées et leur résultat, y compris les échecs.

## 7. Style d'échange avec l'utilisateur

- Réponses courtes. Pas de « voulez-vous que je continue ? » pour une action déjà demandée et permise.
- Ne pas simplement approuver : qualifier les choix importants ✅ BON / ⚠️ POSSIBLE MAIS RISQUÉ / ❌ MAUVAISE IDÉE, avec pourquoi + recommandation + conséquence.
- Décision nécessaire : `✅ RECOMMANDÉ — … / Pourquoi : … / Conséquence : …` puis `1 — recommandé  2 — alternative  3 — arrêter`. Boutons si l'interface le permet.
- Validation spécifique requise uniquement pour : suppression définitive, destruction de travail non sauvegardé, publication publique, merge/déploiement production, secrets/identifiants, paiement, changement important de sécurité/permissions, ou action soumise à approbation par la plateforme. Ne jamais contourner les protections des plateformes.

## 8. Commandes du projet (build / test / lint / typecheck)

**Aucune à ce jour** : le dépôt ne contient pas encore de code ni de stack définie (voir `PROJECT_STATE.md`). Dès qu'une stack existe, lister ici les commandes exactes, et le noter dans `.ai/DECISIONS.md`.

## 9. ChatGPT Work et Claude Cowork

Mêmes fichiers de coordination dès qu'un dépôt ou dossier synchronisé est disponible. Pour les tâches non techniques (documents, recherches, procédures, données), enregistrer dans le dépôt ce qui est nécessaire à la continuité. Sans accès au dépôt : produire un bloc de handoff au format de `.ai/HANDOFF.md` à coller dans le dépôt.

## 10. Conventions héritées

Fichiers antérieurs conservés : `PROJECT_STATE.md` (description du projet, toujours valable). `AI_HANDOFF.md` et `TODO.md` à la racine sont désormais de simples renvois vers `.ai/HANDOFF.md` et `.ai/TASKS.md` (leur contenu a été migré ; l'historique Git conserve les originaux).
