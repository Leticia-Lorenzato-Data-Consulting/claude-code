<%*
const title = await tp.system.prompt("Título da reunião");
const dateStr = tp.date.now("YYYY-MM-DD");
const slug = title.toLowerCase().replace(/[^\w\s-]/g, "").trim().replace(/\s+/g, "-");
await tp.file.rename(`${dateStr} - ${title}`);
const targetFolder = `20_Meetings/${tp.date.now("YYYY")}/${tp.date.now("YYYY-MM")}`;
await tp.file.move(`${targetFolder}/${tp.file.title}`);
-%>
---
id: meeting-<% dateStr %>-<% slug %>
type: meeting
source: manual
source_id: 
date: <% dateStr %>
time: <% tp.date.now("HH:mm") %>
duration_min: 
participants: []
companies: []
projects: []
tags: []
privacy: business
status: completed
---

# <% title %>

> [!info] Metadata
> **Data:** <% tp.date.now("YYYY-MM-DD HH:mm") %>
> **Participantes:** *(adicionar wikilinks no frontmatter)*
> **Empresas:** *(adicionar wikilinks no frontmatter)*
> **Projetos:** *(adicionar wikilinks no frontmatter)*

## Resumo

## Pontos discutidos

## Decisões

## Action items

- [ ] 

## Transcrição (referência)

*(Para reuniões importadas via Read.ai, a transcrição vai aqui automaticamente.)*

## Notas relacionadas
