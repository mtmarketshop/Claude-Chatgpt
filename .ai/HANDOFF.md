# AI HANDOFF

Last updated: 2026-10-05
Agent: Claude Code (Sonnet 5.5)
Current task: T-001 — Mise en place du système de coordination multi-agents
GitHub issue: none
Current branch: main
Base branch: main
Last known commit: 5a3c7b9 (+ commit de mise en place du protocole, voir `git log`)
Pull request: none

## Objective

Faire de ce dépôt la mémoire centrale commune de Claude Code, Codex, ChatGPT Work et Claude Cowork, pour pouvoir changer d'agent à tout moment sans perte de contexte.

## Current state

Protocole en place : `AI_WORKFLOW.md`, `AGENTS.md`, `CLAUDE.md`, `.ai/*`, `.github/pull_request_template.md`. Aucun code applicatif. Le projet applicatif n'est pas défini (objectif et stack inconnus).

## Completed

- Analyse du dépôt (contenu initial : README, AI_HANDOFF.md, PROJECT_STATE.md, TODO.md).
- Création du protocole commun et des fichiers de coordination.
- Migration de l'ancien `AI_HANDOFF.md` / `TODO.md` vers `.ai/` (racine = renvois).

## In progress

Rien.

## Files changed

`AI_WORKFLOW.md`, `AGENTS.md`, `CLAUDE.md`, `.ai/HANDOFF.md`, `.ai/TASKS.md`, `.ai/DECISIONS.md`, `.ai/SESSION_LOG.md`, `.github/pull_request_template.md` (nouveaux) ; `AI_HANDOFF.md`, `TODO.md`, `PROJECT_STATE.md`, `README.md` (modifiés).

## Tests performed

Aucun test automatisé (pas de code). Relecture manuelle des liens entre fichiers ; vérification de l'absence de secrets par recherche de motifs.

## Problems / blockers

- Aucun script build/test/lint à documenter (pas de code).
- Claude in Chrome non connecté pendant la mise en place : fichiers créés via clone local puis poussés.
- Pas de `gh` CLI installé : Issues/PR à créer via l'interface web ou après installation de `gh`.

## Decisions already made

- `AI_WORKFLOW.md` = unique source des règles ; `AGENTS.md` et `CLAUDE.md` sont de courts renvois (voir `.ai/DECISIONS.md` D-001).
- `.ai/HANDOFF.md` remplace l'ancien `AI_HANDOFF.md` racine.

## Important context

- Clone local de l'utilisateur : `C:\Users\PC\Documents\GitHub\Claude-Chatgpt` (Windows).
- L'utilisateur parle français, veut des échanges courts et un avis franc (✅/⚠️/❌).
- Ne jamais mettre de secrets dans le dépôt.

## EXACT NEXT ACTION

Demander à l'utilisateur la nature du projet (objectif, stack). Puis renseigner `README.md`, `PROJECT_STATE.md` et la section 8 de `AI_WORKFLOW.md` (commandes build/test/lint), créer l'Issue du projet, et ajouter les tâches correspondantes dans `.ai/TASKS.md`.
