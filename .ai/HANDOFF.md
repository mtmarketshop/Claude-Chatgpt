# AI HANDOFF

Last updated: 2026-10-10
Agent: Codex
Current task: T-004 — Relais e-commerce à Claude
Current branch: chore/t-004-relais-claude
Base branch: main
Last known commit: 368e703 avant ce checkpoint ; voir git log pour le commit de relais
GitHub issue / Pull request: none (checkpoint documentaire)

## Objective
Transmettre à Claude le contexte de MTMarketShop via le dépôt local et GitHub.

## Current state
Analyse Shopify terminée en lecture seule. Aucune modification Shopify. L'utilisateur a explicitement décidé de laisser les huit fiches de diagnostic automobile telles quelles. Aucun travail de correction en cours ou autorisé.
Le dépôt reste une mémoire de coordination sans application. T-002 et T-003 restent en attente ; aucune stack ou application demandée.

## Completed
- Connexion Shopify de Codex vérifiée : MTMarketShop, mtmarketshop.com.
- Lecture de 13 produits, 10 collections et des huit fiches détaillées de diagnostic.
- Rapports des 30 derniers jours : 118 sessions, 2 avec ajout au panier, 1 atteignant le checkout, 0 finalisée dans le rapport des sessions ; rapport des ventes : 1 commande et 8,99 EUR. Différence non expliquée ; ne pas conclure à un bug.
- Constats : titres « Interface diagnostic » mais descriptions de logiciels et interface physique exclue ; trois collections vides (Accessoires automobiles, Fichiers ECU sur mesure, Jeux et jouets) ; plusieurs variantes à stock nul.
- Propositions présentées sans application. Décision finale : laisser tel quel.

## In progress
Relais documentaire uniquement. Claude n'a pas été lancé et n'a pas confirmé réception.

## Files changed
.ai/HANDOFF.md, .ai/TASKS.md, .ai/DECISIONS.md, .ai/SESSION_LOG.md.

## Tests performed
- git fetch/status/log échouent dans le dossier parent : absence de .git.
- Ancien clone Documents/GitHub cité précédemment : non trouvé.
- Nouveau clone GitHub et fetch réussis ; état initial propre sur main, HEAD 368e703.
- Relecture des documents ; git diff --check réussi avant commit. Aucun test applicatif nécessaire.

## Problems / blockers
- Site public inaccessible via l'outil web : apparence, menus et parcours d'achat non vérifiés.
- Licence, support livré, activation, compatibilité précise et prérequis des logiciels non vérifiés.
- Les accès Shopify de Codex ne sont pas transférés à Claude ; vérifier son propre accès seulement si nécessaire pour la prochaine demande.

## Decisions already made
D-001 et D-002 conservées. D-003 : laisser les huit fiches Shopify telles quelles.

## Important context
- Clone opérationnel : C:\Users\PC\Desktop\Claude-Chatgpt-main\github-local.
- Le dossier parent est une copie sans .git ; ne pas le confondre avec le clone.
- Français simple ; terminer par « À faire : … Pourquoi : … ». Boutons numérotés pour les prochaines actions utiles.
- Ne transmettre aucun secret dans Git.

## EXACT NEXT ACTION
Relais pris par Claude le 2026-10-10. À FAIRE le 2026-10-12 : contrôle TikTok (D-006). Expéditions : eBay avant 13 oct, TikTok avant 14 oct. Connecteurs vérifiés : Shopify OK, 4Seller OK (Chrome). État des canaux et décision D-004 (annonces TikTok conservées) : voir `.ai/SESSION_LOG.md` et `.ai/DECISIONS.md`. Prochaine étape possible : vérifier les 14 annonces eBay une par une (lecture seule), puis attendre la demande de l'utilisateur. Aucune dépublication ni modification Shopify/4Seller sans accord ; aucun merge ni déploiement.

