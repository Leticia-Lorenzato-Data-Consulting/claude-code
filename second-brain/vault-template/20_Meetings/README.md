# 20 — Meetings

Uma nota por reunião. Subdiretórios por ano e mês: `YYYY/YYYY-MM/`.

## Nomeação

`YYYY-MM-DD - Título da reunião.md`

Exemplo: `2026-05-09 - Kickoff Acme migração.md`

## Frontmatter chave

```yaml
type: meeting
date: 2026-05-09
participants: ["[[Nome]]", "[[Nome]]"]
companies: ["[[Empresa]]"]
projects: ["[[Projeto]]"]
privacy: business | personal
source: read.ai | manual
```

Os wikilinks em `participants`, `companies` e `projects` são o que faz o cross-linking funcionar — Dataview consulta esses campos para gerar listas em notas de pessoa/empresa/projeto.

## Origem

- **Read.ai** (Fase 3 do roadmap): sync automático escreve a reunião com transcript e summary.
- **Manual:** use Templater → `meeting.md`.
