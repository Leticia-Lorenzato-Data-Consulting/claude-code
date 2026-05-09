# Configuração recomendada do Obsidian

## Plugins core (já vêm com Obsidian — só habilitar)

- **Templates** — base para Templater. Pasta: `_meta/templates/`.
- **Daily Notes** — notas diárias. Pasta: `10_Daily/`. Template: `_meta/templates/daily-note.md`. Format: `YYYY-MM-DD`.
- **Files & Links** — "Use Wikilinks: ON". "New link format: Shortest path when possible".
- **Outline** e **Backlinks** — habilitar.

## Community plugins (instalar via Settings → Community plugins)

| Plugin | Por quê |
|---|---|
| **Templater** | Templates dinâmicos com variáveis (data, prompt, mover/renomear arquivo). Indispensável para os templates deste repo. |
| **Dataview** | Queries SQL-like sobre frontmatter. Faz as listas de "reuniões com X", "action items abertos" etc. funcionarem. |
| **QuickAdd** | Captura rápida (Inbox), criação de notas com 1 atalho. |
| **Calendar** | Navegação visual entre daily notes. |
| **Periodic Notes** | Daily/weekly/monthly notes — extensão do core. |
| **Tag Wrangler** | Renomear/mesclar tags em massa. Útil quando o vault cresce. |
| **Iconize** ou **Icon Folder** | Ícones nas pastas — opcional, ajuda navegação visual. |
| **Style Settings** | Tweaks de tema sem mexer em CSS. |

## Configuração de Templater

**Settings → Templater:**

- Template folder location: `_meta/templates`
- Trigger Templater on new file creation: **ON**
- Folder Templates: pode mapear pastas a templates específicos (ex: `20_Meetings/` → `meeting.md`).

## Configuração de Daily Notes

**Settings → Daily notes:**

- Date format: `YYYY-MM-DD`
- New file location: `10_Daily/`
- Template file location: `_meta/templates/daily-note.md`

## Excluded files

**Settings → Files & Links → Excluded files:** adicionar:

- `_meta/`
- `80_Archive/` (incluir manualmente em buscas quando precisar)

## Hot keys úteis

- `Cmd/Ctrl + P` → command palette
- `Cmd/Ctrl + O` → quick switcher
- `Cmd/Ctrl + Shift + F` → busca global
- `Cmd/Ctrl + N` → nova nota
- `Cmd/Ctrl + ,` → settings

Configure: `Open today's daily note` em um atalho fácil (ex: `Cmd+T`).
