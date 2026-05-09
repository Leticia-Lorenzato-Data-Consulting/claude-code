---
id: company-<% tp.file.title.toLowerCase().replace(/[^\w\s-]/g, "").trim().replace(/\s+/g, "-") %>
type: company
aliases: []
website: 
industry: 
status: active
tags: []
---

# <% tp.file.title %>

## Sobre

## Pessoas-chave

```dataview
LIST FROM "30_People"
WHERE contains(companies, this.file.link)
```

## Projetos relacionados

```dataview
TABLE status, start_date, end_date
FROM "50_Projects"
WHERE contains(companies, this.file.link)
SORT start_date DESC
```

## Reuniões recentes

```dataview
TABLE date, participants
FROM "20_Meetings"
WHERE contains(companies, this.file.link)
SORT date DESC
LIMIT 10
```

## Notas
