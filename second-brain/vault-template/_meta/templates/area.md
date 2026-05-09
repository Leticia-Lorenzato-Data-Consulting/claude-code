---
id: area-<% tp.file.title.toLowerCase().replace(/[^\w\s-]/g, "").trim().replace(/\s+/g, "-") %>
type: area
status: active
tags: []
---

# <% tp.file.title %>

## Definição

*O que essa área cobre. O que entra, o que não entra.*

## Padrões / Rotinas

*Cadências, rituais, checks regulares.*

## Projetos ativos relacionados

```dataview
TABLE status, end_date
FROM "50_Projects"
WHERE contains(file.outlinks, this.file.link) OR contains(tags, this.file.name)
WHERE status = "active"
```

## Recursos

```dataview
LIST FROM "70_Resources"
WHERE contains(file.outlinks, this.file.link) OR contains(tags, this.file.name)
```

## Notas
