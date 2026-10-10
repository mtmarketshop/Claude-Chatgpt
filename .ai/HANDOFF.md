# AI HANDOFF

Last updated: 2026-10-10
Agent : Codex — reprise du relais de Claude Code (Sonnet 5.5)
Current task: T-005 — Audit de conformité des boutiques avec Shopify (lecture seule, partiel)
Current branch: chore/t-004-relais-claude
Base branch: main
Last known commit: 6d04939 avant le checkpoint de reprise à 149 détails ; voir git log pour le checkpoint courant
GitHub issue / Pull request: none

## Objective
Suivre MTMarketShop (Shopify maître + 4Seller vers eBay, TikTok Shop, Temu) sans perte de contexte entre agents.

## Observations historiques de Claude (2026-10-10, lecture seule)
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

## Actions historiques de suivi (toujours valables, sans automatisation)
1. Expéditions à faire par l'utilisateur : 2 commandes eBay (AutoCom 2021 ; AutoCom 2021 + VCDS 25.3) avant le 2026-10-13 ; 1 commande TikTok ES (ECO-004 jaune) avant le 2026-10-14 (Chronopost). L'utilisateur confirme avoir la pièce.
2. Le 2026-10-12 : contrôle TikTok en lecture seule (4Seller > Produits > TikTok : compteurs En vente / Vérification > onglet Gelé). Si de nouvelles annonces sont gelées, proposer la dépublication groupée sur TikTok des logiciels (accord de l'utilisateur obligatoire). Pas de rappel programmé : l'utilisateur doit le demander (« contrôle TikTok »).
3. Sinon attendre la demande de l'utilisateur. Aucune modification Shopify/4Seller/eBay/TikTok, aucun merge ni déploiement sans accord explicite.

## Reprise Codex — 2026-10-10
Relais de Claude lu et comparé à Git : fetch réussi, branche propre et synchronisée au commit 7b81d7e. Constats de Claude conservés comme observations antérieures, sans nouvelle vérification des plateformes. Aucun changement externe. Contrôle du 12 octobre non anticipé ; aucune automatisation créée. git diff --check effectué avant checkpoint ; pas de code changé.

## Vérification de reprise — 2026-10-10
À la demande explicite de reprise sur chore/t-004-relais-claude : fetch réussi, HEAD 2f81d53 synchronisé, aucun nouveau commit de Claude. EXACT NEXT ACTION inchangée : expéditions par l'utilisateur, contrôle TikTok le 12 octobre sur demande, sinon attente. Aucune intervention externe.

## Audit demandé par l'utilisateur — 2026-10-10
- Rapport : `.ai/AUDIT_BOUTIQUES_2026-10-10.md`. Source Shopify : 13 produits lus par le connecteur ; copies Shopify 4Seller : 13/13 conformes (titres, SKU/prix, texte normalisé, URL/ordre des photos).
- eBay : 14/14 actives lues ; prix et texte des descriptions conformes ; 2 titres de lunettes différents ; photos réhébergées à certifier visuellement.
- TikTok : 167 annonces recensées, 116 détails confirmés. Correction du précédent relais : les 167 incluent les produits physiques ; DE n'a que 8 diagnostics, BE 8 diagnostics + survêtement, GR 20 annonces avec 7 anciens diagnostics supplémentaires. Les 10 autres boutiques ont chacune 13 annonces.
- TikTok FR : les 13 titres et prix par SKU correspondent. Écouteurs : galerie principale 9 contre 12 Shopify, mais les 12 variantes ont leurs images. Anciennes GR : 5 variantes NUM supplémentaires absentes de Shopify (voir IDs dans rapport).
- Temu : 0 active, 4 inactives suspendues ; titres correspondants ; prix catalogue 11,98 / 10,65–22,64 / 26,63 / 47,94 EUR supérieurs à Shopify.
- Descriptions TikTok : éditeur vide malgré compteur non nul ; ne pas conclure à une description publiée vide. Aperçu public testé en erreur 502. Descriptions/galeries Temu et images eBay/TikTok non entièrement certifiées.
- 16 boutiques autorisées affichées actives. Copie Shopify affiche un avertissement de réautorisation pour canaux/marchés ; rien réautorisé. Catalogue central et synchro des prix affichent Aucune donnée. Flux Google/Meta non comparés.
- Aucun changement externe, aucune commande expédiée, aucune automatisation. D-003 à D-006 maintenues. Pas de code changé.
- Git : fetch réussi, branche propre au démarrage à 799029e ; vérification documentaire par git diff --check avant checkpoint.
- Blocage : reconnexion Chrome confirmée par l'utilisateur, puis nouvel onglet fonctionnel pour 11 lectures ; ensuite commandes de consultation à nouveau bloquées page 2. Détails restants : 51. Une Issue GitHub n'a pas été créée : gh indisponible.

## EXACT NEXT ACTION
**État courant prioritaire (10 octobre, dernière instruction utilisateur)** : 149/167 détails TikTok confirmés. Ne plus manipuler Chrome en passant devant les pages de l'utilisateur. Reprise autorisée en lecture seule, uniquement avec connecteur ou accès réellement en arrière-plan. Pas de nouveau projet. Restent page 2 indices 48–52 et 54–66 (18 fiches), après vérification des ID. Toutes les fiches écouteurs, ventilateurs et tondeuses sont désormais lues ; reste surtout lunettes/survêtements. Voir section de reprise à la fin du rapport pour les 33 lectures et prix locaux. Les étapes historiques suivantes ne doivent pas relancer Chrome au premier plan.

Reconnexion confirmée à nouveau par l'utilisateur : l'inventaire navigateur et l'ouverture directe de 4Seller ont encore expiré (environ 30 s chacun). Aucun nouveau contrôle. Avant une nouvelle tentative, proposer de fermer/réouvrir Chrome et Codex, puis reconnecter l'extension ; ne pas répéter seulement « connexion réactivée ». Point Git vérifié : d106509 ; audit toujours 116/167.
0. Dernière tentative de reprise autorisée par le choix « 1 » : fetch réussi, branche synchronisée à 5236dd1. Deux inventaires navigateur et une ouverture directe de nouvel onglet Chrome ont expiré. Aucun nouvel accès aux fiches. L'utilisateur doit réactiver la connexion de l'extension Codex à Chrome ; question envoyée. Aucun outil de lecture direct TikTok/Temu/eBay/4Seller disponible dans cette session. Le décompte reste 116/167, aucun changement externe.
1. Reprendre T-005 en lecture seule : lire le rapport puis 4Seller > TikTok > Publié > En vente, toutes boutiques, 100/page, page 2. Vérifier que l'ordre n'a pas changé. Indices déjà lus (base zéro) : 0–10, 21, 22, 43, 44, 53. Restent 11–20, 23–42, 45–52, 54–66. Si les anciens onglets ne répondent plus, ouvrir un nouvel onglet depuis la même session Chrome.
2. Obtenir une lecture réelle des descriptions TikTok (interface vendeur si accessible), des descriptions/galeries Temu, puis certifier visuellement les photos eBay/TikTok et vérifier les flux Google/Meta accessibles. Ne pas affirmer une conformité complète avec des champs illisibles.
3. Aucun clic Synchroniser / Mettre à jour / Réautoriser / Supprimer / Désactiver. Shopify reste inchangé ; toute correction doit avoir un avant/après concret puis une validation.
4. Conserver les expéditions à faire par l'utilisateur et le contrôle TikTok du 12 octobre sur demande décrits plus haut.

## Dernière reprise — Chrome fonctionnel puis arrêté à la demande utilisateur
- Git fetch réussi, branche propre à 6d04939 au démarrage. 33 détails supplémentaires confirmés, audit à 149/167 ; aucune modification des boutiques.
- Compteurs 4Seller recontrôlés : 167 en vente, 382 supprimées, 52 en vérification. Écouteurs : 9 photos principales partout, 12 variantes illustrées ; ventilateurs/tondeuses : 4 photos principales partout. Prix EUR conformes par SKU, prix locaux relevés dans le rapport.
- Descriptions TikTok toujours non lisibles ; galeries réhébergées non certifiées visuellement. Restent aussi les champs Temu et flux Google/Meta du rapport.
- L'utilisateur demande « arrête d'ouvrir les pages Chrome par dessus les miennes ». Arrêt des manipulations Chrome immédiat, aucune nouvelle ouverture Chrome à effectuer au premier plan. Préférer connecteurs/arrière-plan sans modifier l'authentification ni les paramètres du navigateur.
- Documentation seulement : git diff --check avant checkpoint ; pas de tests applicatifs.

## Reprise en arrière-plan — 2026-10-10
- Instruction : continuer sans interrompre les pages Chrome. Capacités Chrome vérifiées : aucun mode de visibilité/caché disponible ; aucun onglet Chrome ouvert ni interaction au premier plan.
- Alternative testée : navigateur intégré Codex créé avec visible=false. 4Seller redirige vers sa page publique : session séparée non connectée. Page de connexion préparée dans ce navigateur masqué, conservée pour reprise ; aucune donnée d'authentification saisie.
- Action nécessaire : connexion manuelle de l'utilisateur à 4Seller dans le navigateur intégré Codex, puis masquer ce navigateur et poursuivre les 18 détails restants en lecture seule. Aucun secret transféré depuis Chrome.
- Audit inchangé : 149/167. Git fetch réussi, branche propre à d7304a2 avant documentation ; git diff --check effectué avant checkpoint.
