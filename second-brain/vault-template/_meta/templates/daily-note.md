---
id: daily-<% tp.date.now("YYYY-MM-DD") %>
type: daily
date: <% tp.date.now("YYYY-MM-DD") %>
tags: []
---

# <% tp.date.now("dddd, DD [de] MMMM [de] YYYY") %>

[[<% tp.date.yesterday("YYYY-MM-DD") %>|← Ontem]] | [[<% tp.date.tomorrow("YYYY-MM-DD") %>|Amanhã →]]

## Foco do dia

## Reuniões de hoje

```dataview
LIST
FROM "20_Meetings"
WHERE date = date("<% tp.date.now("YYYY-MM-DD") %>")
SORT time ASC
```

## Notas

## Action items que apareceram hoje

- [ ] 

## Open loops

*Coisas pendentes que ficaram abertas no fim do dia — revisar amanhã.*
