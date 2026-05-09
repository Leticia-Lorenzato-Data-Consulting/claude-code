# Second Brain — Obsidian + integrações

Sistema de "segundo cérebro" pessoal baseado em [Obsidian](https://obsidian.md), com sync unidirecional vindo de Notion, Read.ai, GitHub e Microsoft 365.

## Status

- [x] **Fase 1** — Estrutura do vault, templates, init script *(este PR)*
- [ ] Fase 2 — Sync engine + adapter para Notion
- [ ] Fase 3 — Adapter para Read.ai (reuniões)
- [ ] Fase 4 — Adapter para GitHub
- [ ] Fase 5 — Adapter para Microsoft 365 / OneNote
- [ ] Fase 6 — Auto-link, MOCs sugeridos, dashboards

## Decisões arquiteturais

Resumo. Detalhes em [`docs/architecture.md`](docs/architecture.md).

- **Metodologia:** PARA (Projects / Areas / Resources / Archive) + MOCs (Maps of Content).
- **Privacidade:** dois vaults separados — `Work/` e `Personal/` — gerados a partir do mesmo template.
- **Sync:** unidirecional (fontes externas → vault). Edição é só dentro do Obsidian.
- **Cross-linking:** wikilinks + frontmatter padronizado + queries Dataview.

## Quick start

```bash
# Criar vault de trabalho
./scripts/init-vault.sh ~/Documents/Obsidian/Work

# Criar vault pessoal
./scripts/init-vault.sh ~/Documents/Obsidian/Personal

# Abrir no Obsidian: "Open folder as vault" → escolher o caminho criado
# Instalar plugins recomendados — ver _meta/obsidian-config/README.md
```

## Estrutura do vault (PARA + MOCs)

```
SecondBrain/
├── 00_Inbox/        Captura bruta antes de classificar
├── 10_Daily/        Notas diárias
├── 20_Meetings/     1 nota por reunião (YYYY/YYYY-MM/)
├── 30_People/       1 nota por pessoa
├── 40_Companies/    1 nota por empresa
├── 50_Projects/     Projetos com prazo
├── 60_Areas/        Áreas contínuas (sem prazo)
├── 70_Resources/    Material de referência
├── 80_Archive/      Tudo que saiu do ativo
├── 90_MOCs/         Maps of Content (índices temáticos)
├── 99_Attachments/  Mídia, PDFs, etc.
└── _meta/           Templates + sync state + config sugerida
```

## Próximos passos

Próximo PR: **sync engine** com primeiro adapter (Notion). Ver [`docs/architecture.md`](docs/architecture.md) para o pipeline completo.
