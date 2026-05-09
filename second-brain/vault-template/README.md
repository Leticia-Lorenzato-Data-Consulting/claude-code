# Second Brain — Vault Obsidian

Estrutura **PARA + MOCs** para um vault Obsidian que centraliza reuniões, pessoas, empresas, projetos, áreas e referências.

## Convenções

### Nomeação de arquivos

- **Pessoas:** `Nome Sobrenome.md` em `30_People/` (use o nome canônico — variações vão em `aliases:` no frontmatter).
- **Empresas:** `Nome da Empresa.md` em `40_Companies/`.
- **Projetos:** `Nome do Projeto.md` em `50_Projects/`.
- **Reuniões:** `YYYY-MM-DD - Título.md` em `20_Meetings/YYYY/YYYY-MM/`.
- **Daily:** `YYYY-MM-DD.md` em `10_Daily/`.

### Frontmatter

Toda nota tem ao mínimo:

```yaml
---
id: <slug-único>
type: meeting | person | company | project | area | resource | daily | moc
tags: []
privacy: business | personal
---
```

Templates específicos em `_meta/templates/` adicionam campos por tipo. Use sempre **wikilinks** em campos como `participants`, `companies`, `projects` para que Dataview consiga consultar.

### Wikilinks vs tags

- **Wikilinks** (`[[Nome]]`) para entidades com identidade própria: pessoas, empresas, projetos, áreas, MOCs.
- **Tags** (`#tópico`) para tópicos transversais sem nota dedicada (ex: `#api-design`, `#contratação`).

Quando uma tag virar relevante o suficiente, promova para um MOC em `90_MOCs/`.

## Plugins recomendados

Ver [`_meta/obsidian-config/README.md`](_meta/obsidian-config/README.md).

## Estrutura

```
00_Inbox/        Captura bruta antes de classificar
10_Daily/        Notas diárias
20_Meetings/     1 nota por reunião
30_People/       1 nota por pessoa
40_Companies/    1 nota por empresa
50_Projects/     Projetos com prazo
60_Areas/        Áreas contínuas (sem prazo)
70_Resources/    Material de referência
80_Archive/      Tudo que saiu do ativo
90_MOCs/         Maps of Content
99_Attachments/  Mídia, PDFs, etc.
_meta/           Templates e sync state
```
