---
id: person-<% tp.file.title.toLowerCase().replace(/[^\w\s-]/g, "").trim().replace(/\s+/g, "-") %>
type: person
aliases: []
companies: []
role: 
email: 
linkedin: 
first_met: <% tp.date.now("YYYY-MM-DD") %>
tags: []
privacy: business
status: 
---

# <% tp.file.title %>

## Contexto

*Como vocês se conheceram, em que contexto trabalham juntos.*

## Notas

## Reuniões

```dataview
TABLE date as "Data", file.link as "Reunião", companies as "Empresa"
FROM "20_Meetings"
WHERE contains(participants, this.file.link)
SORT date DESC
LIMIT 20
```

## Action items abertos

```dataview
TASK FROM "20_Meetings"
WHERE contains(participants, this.file.link)
WHERE !completed
```

## Empresas

```dataview
LIST FROM "40_Companies"
WHERE contains(file.outlinks, this.file.link)
```
