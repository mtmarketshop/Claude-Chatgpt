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

## D-004 — 2026-10-10 — Annonces TikTok des 8 logiciels de diagnostic conservées
- Constat (4Seller, lecture seule) : 167 annonces TikTok en vente (52 en vérification), créées/publiées le 2026-10-10 entre 00h13 et 01h53, pour les 8 logiciels (Delphi 2017/2020/2021, AutoCom 2020/2021, WOW 5.00.08/5.00.12, VCDS 25.3) dans ~13 boutiques TikTok, 6,99–8,99 EUR, stock 18–20. Auteur de la création non identifié.
- Décision de l'utilisateur : les garder publiées telles quelles. Risque connu : licence/contrefaçon signalé par 4Seller, retrait ou sanction TikTok possible.
- Conséquences : aucune dépublication ni modification sans nouvel accord. Ces produits sont des logiciels numériques : le stock reste géré dans Shopify.

## D-005 — 2026-10-10 — Shopify reste la référence de stock
- Constat (4Seller, lecture seule) : la synchro de stock fonctionne (42 réussies / 0 échec / 0 échec de déduction sur 24 h). Les stocks sont propagés depuis le module Inventaire de 4Seller vers eBay, TikTok, Temu ; Shopify affiche les mêmes valeurs (mécanisme non confirmé). Les commandes eBay/TikTok ne sont pas recréées dans Shopify (dernière = #1662).
- Décision de l'utilisateur : Shopify reste la référence. Écart de stock = corriger 4Seller et les canaux pour s'aligner sur Shopify, jamais l'inverse, avec AVANT/APRÈS et validation avant toute correction.
- Conséquences : surveiller les écarts Shopify / 4Seller / canaux ; aucune écriture sans accord.

## D-006 — 2026-10-10 — Surveillance 48 h des annonces TikTok des logiciels
- Contexte : 52 annonces des 8 logiciels gelées par TikTok le 2026-10-07 (« Unsupported product »). Les 167 annonces actives du 2026-10-10 sont les mêmes produits avec titres reformulés (« compatible Delphi/WOW/... »).
- Décision de l'utilisateur : garder les annonces 48 h et surveiller, sans modifier.
- Suite : contrôle en lecture seule le 2026-10-12 (4Seller > TikTok : compteurs En vente / Vérification > Gelé). Si de nouvelles annonces sont gelées, proposer la dépublication groupée sur TikTok (accord de l'utilisateur requis). Prévient aussi l'utilisateur que le risque porte sur tout le compte TikTok.
