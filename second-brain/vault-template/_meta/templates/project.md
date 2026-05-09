---
id: project-<% tp.file.title.toLowerCase().replace(/[^\w\s-]/g, "").trim().replace(/\s+/g, "-") %>
type: project
status: active
start_date: <% tp.date.now("YYYY-MM-DD") %>
end_date: 
companies: []
participants: []
tags: []
priority: medium
---

# <% tp.file.title %>

## Objetivo

*Uma frase. Por que esse projeto existe.*

## Escopo

**Inclui:**

**Não inclui:**

## Status atual

*Atualizar regularmente — uma seção `## YYYY-MM-DD` no topo é uma boa prática.*

## Próximos passos

- [ ] 

## Action items (de reuniões)

```dataview
TASK FROM "20_Meetings"
WHERE contains(projects, this.file.link)
WHERE !completed
```

## Reuniões

```dataview
TABLE date, participants
FROM "20_Meetings"
WHERE contains(projects, this.file.link)
SORT date DESC
```

## Recursos relacionados

```dataview
LIST FROM "70_Resources"
WHERE contains(file.outlinks, this.file.link)
```
