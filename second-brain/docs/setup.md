# Setup

## Pré-requisitos

- [Obsidian](https://obsidian.md) instalado.
- `bash` (Linux/macOS) ou WSL (Windows) para rodar o init script.
- Para fases 2+: Python 3.11+ e tokens das fontes (Notion, Read.ai, etc.).

## 1. Criar os vaults

Do diretório raiz deste repo:

```bash
./second-brain/scripts/init-vault.sh ~/Documents/Obsidian/Work
./second-brain/scripts/init-vault.sh ~/Documents/Obsidian/Personal
```

O script copia `vault-template/` para o caminho que você passou. Recusa sobrescrever destino existente.

## 2. Abrir no Obsidian

1. Abrir Obsidian → **Open folder as vault** → escolher `~/Documents/Obsidian/Work`.
2. Habilitar Community Plugins (Settings → Community plugins → Turn on).
3. Instalar plugins recomendados — lista em [`vault-template/_meta/obsidian-config/README.md`](../vault-template/_meta/obsidian-config/README.md).
4. Repetir para o vault Personal.

## 3. Configuração mínima recomendada

- **Files & Links:** "New link format" = `Shortest path when possible`, "Use Wikilinks" = on.
- **Daily Notes (core):** template = `_meta/templates/daily-note.md`, folder = `10_Daily/`.
- **Templates (core):** template folder = `_meta/templates/`.
- **Excluded files:** adicionar `_meta/` para tirar dos resultados de busca global.

## 4. Validar

Crie uma reunião de teste:

1. Cmd/Ctrl+P → `Templater: Create new note from template` → `meeting.md`.
2. Coloque em `20_Meetings/2026/2026-05/teste.md`.
3. Adicione um participante: `participants: ["[[João Teste]]"]` no frontmatter.
4. Cmd-clique no link `João Teste` para criar a nota da pessoa a partir do template `person.md`.
5. Volte para a reunião — Dataview na nota da pessoa deve listar essa reunião.

Se isso funciona, a fundação está pronta para receber sync automatizado.

## 5. Próximas fases

Após Fase 1, o sync engine virá em `second-brain/sync_engine/` (Python). Vai precisar de:

- `.env` com tokens (Notion, Read.ai, GitHub, etc.)
- `config.yaml` com mapeamento fonte → pasta de destino
- Execução manual ou via cron / GitHub Actions

Detalhes virão no PR da Fase 2.
