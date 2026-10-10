# TASKS

États : TODO | IN PROGRESS | BLOCKED | DONE

| ID | Description | État | Issue | Agent | Branche | Dépend de |
|----|-------------|------|-------|-------|---------|-----------|
| T-001 | Système de coordination multi-agents (protocole + `.ai/`) | DONE | - | Claude Code | main | - |
| T-002 | Définir objectif et stack du projet ; compléter `README.md`, `PROJECT_STATE.md`, commandes build/test dans `AI_WORKFLOW.md` §8 | TODO | - | - | - | - |
| T-003 | Squelette du projet une fois la stack choisie | TODO | - | - | - | T-002 |

## Historique condensé

- Relier le dossier au dépôt GitHub : DONE (2026-10-01, Claude).
- Création initiale des fichiers de suivi : DONE (2026-10-01, Claude) — migrés vers `.ai/`.

## T-004 — Relais e-commerce à Claude
- État : DONE (préparation du contexte ; réception par Claude non confirmée).
- Agent : Codex. Branche : chore/t-004-relais-claude.
- Analyse Shopify en lecture seule terminée ; décision utilisateur : laisser les huit fiches telles quelles.
- T-002 et T-003 restent en attente, sans autorisation de créer une application.

## Reprise T-004 — 2026-10-10
- Relais Claude reçu et lu par Codex (7b81d7e), contrairement au statut historique « réception non confirmée » ci-dessus.
- Suivi e-commerce : en attente de la prochaine demande ; contrôle TikTok prévu le 2026-10-12, sans automatisation.
- Expéditions restant à confirmer par l'utilisateur : deux eBay avant le 13 octobre et une TikTok ES avant le 14 octobre, selon les observations de Claude.
- Nouvelle vérification du relais : aucun nouveau travail Claude après 2f81d53 ; prochaines actions inchangées.

## T-005 — Comparer toutes les boutiques et le connecteur à Shopify
- État : BLOCKED (audit partiel documenté ; consultation restante et champs non accessibles).
- Agent : Codex. Branche : chore/t-004-relais-claude, continuité du relais e-commerce demandé.
- Lecture seule ; aucune correction ni réautorisation de connecteur autorisée.
- Rapport : `.ai/AUDIT_BOUTIQUES_2026-10-10.md`.
- Fait : 13 produits Shopify, 13 copies Shopify 4Seller, 14 annonces eBay actives, 167 lignes TikTok et 116 fiches détaillées, 4 lignes Temu inactives ; 16 boutiques autorisées recensées.
- Écarts : titres lunettes eBay, galerie écouteurs TikTok 9/12, couverture DE/BE, 7 anciens doublons GR dont 5 variantes NUM supplémentaires, prix catalogue Temu supérieurs.
- Restent : 51 détails TikTok (indices dans HANDOFF), descriptions TikTok/Temu, galeries Temu, identité visuelle/ordre eBay/TikTok, flux Google/Meta et rendu public final. Anciennes inactives eBay non entièrement comparées.
- Cause : Chrome reconnecté mais interactions fragiles/bloquées ; descriptions TikTok illisibles et aperçu public 502 ; contenu complet Temu non accessible par la liste.
- Tentative suivante après choix utilisateur « 1 » : navigateur entièrement non répondant (2 inventaires et ouverture d'un onglet expirés). Reconnexion demandée ; aucun détail supplémentaire lu. Branche vérifiée à 5236dd1.
- Critère de réussite : un statut vérifié ou explicitement non vérifiable pour chaque champ et chaque canal, sans modification externe. Ne pas marquer DONE tant que les contrôles restants restent possibles mais non réalisés.
- Nouvelle confirmation utilisateur de reconnexion : inventaire et ouverture directe Chrome toujours expirés. Couverture inchangée. Redémarrage manuel Chrome/Codex à proposer avant une autre tentative identique.
- Dernière reprise : Chrome fonctionnel, 33 détails supplémentaires confirmés ; couverture courante 149/167. Restent page 2 indices 48–52, 54–66 (18), descriptions TikTok/Temu, galeries Temu, comparaison visuelle et flux Google/Meta.
- Contrainte utilisateur prioritaire : ne plus ouvrir/manipuler Chrome devant ses pages. Arrêt immédiat des interactions ; prochaine reprise par connecteur ou accès réellement en arrière-plan. Aucune nouvelle autorisation de correction ni création de projet.
