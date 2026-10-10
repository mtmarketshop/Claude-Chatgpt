# AI HANDOFF

Last updated: 2026-10-10
Agent : Codex — reprise du relais de Claude Code (Sonnet 5.5)
Current task: T-004 — Exploitation e-commerce MTMarketShop (relais)
Current branch: chore/t-004-relais-claude
Base branch: main
Last known commit: 7b81d7e (relais Claude reçu) ; voir git log pour le checkpoint de reprise
GitHub issue / Pull request: none

## Objective
Suivre MTMarketShop (Shopify maître + 4Seller vers eBay, TikTok Shop, Temu) sans perte de contexte entre agents.

## Current state (2026-10-10, tout en lecture seule, rien modifié par Claude)
- Shopify (mtmarketshop.com, plan Basic, EUR) et 4Seller (session Chrome de l'utilisateur) : connectés et fonctionnels.
- Stocks Shopify / 4Seller / eBay / TikTok cohérents (logiciels DIAG 20, AutoCom 2021 = 18, VCDS 25.3 = 19 ; physiques identiques). Synchro stock 4Seller : 42 réussies, 0 échec sur 24 h.
- eBay : 14 en vente (8 logiciels DIAG-*-COURRIER + écouteurs, tondeuse, survêtement, ventilateur, lunettes), 2 inactives. Astuce : la liste « En vente » plante si on arrive dessus directement ; cliquer Inactif puis En vente.
- TikTok : 167 annonces en vente des 8 logiciels (créées le 2026-10-10 par une personne/agent non identifié), 382 supprimées, 52 **gelées par TikTok** (« Unsupported product », 2026-10-07) = les mêmes logiciels. Risque de gel et de sanction du compte.
- Temu : 0 en vente, 4 inactives, 611 supprimées.
- Les commandes eBay/TikTok ne remontent pas dans Shopify (dernière #1662, 2026-09-18) : normal, seul le stock est synchronisé.

## Decisions (voir `.ai/DECISIONS.md`)
D-003 laisser les 8 fiches Shopify telles quelles ; D-004 annonces TikTok conservées ; D-005 Shopify reste la référence de stock ; D-006 garder 48 h et surveiller.

## Problems / blockers
- Raison exacte du gel TikTok : visible seulement dans l'interface vendeur TikTok Shop (non accessible).
- Auteur de la création des 167 annonces TikTok non identifié.
- Licence/contrefaçon des logiciels non vérifiées (signalé par 4Seller).
- Automatisation Chrome sur 4Seller fragile : vérifier chaque écran, ne jamais supprimer sans voir le compteur.

## Important context
- Clone opérationnel : C:\Users\PC\Desktop\Claude-Chatgpt-main\github-local (le dossier parent n'a pas de .git).
- Français simple ; réponses courtes ; terminer par « À faire : … Pourquoi : … » + choix numérotés (1 recommandé, 2 alternative, 3 arrêter). L'utilisateur veut écrire le moins possible.
- Avant toute correction de stock : AFFICHER AVANT/APRÈS et attendre validation. Aucun secret dans Git.

## EXACT NEXT ACTION
1. Expéditions à faire par l'utilisateur : 2 commandes eBay (AutoCom 2021 ; AutoCom 2021 + VCDS 25.3) avant le 2026-10-13 ; 1 commande TikTok ES (ECO-004 jaune) avant le 2026-10-14 (Chronopost). L'utilisateur confirme avoir la pièce.
2. Le 2026-10-12 : contrôle TikTok en lecture seule (4Seller > Produits > TikTok : compteurs En vente / Vérification > onglet Gelé). Si de nouvelles annonces sont gelées, proposer la dépublication groupée sur TikTok des logiciels (accord de l'utilisateur obligatoire). Pas de rappel programmé : l'utilisateur doit le demander (« contrôle TikTok »).
3. Sinon attendre la demande de l'utilisateur. Aucune modification Shopify/4Seller/eBay/TikTok, aucun merge ni déploiement sans accord explicite.

## Reprise Codex — 2026-10-10
Relais de Claude lu et comparé à Git : fetch réussi, branche propre et synchronisée au commit 7b81d7e. Constats de Claude conservés comme observations antérieures, sans nouvelle vérification des plateformes. Aucun changement externe. Contrôle du 12 octobre non anticipé ; aucune automatisation créée. git diff --check effectué avant checkpoint ; pas de code changé.

