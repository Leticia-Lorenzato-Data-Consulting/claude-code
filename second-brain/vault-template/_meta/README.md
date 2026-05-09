# _meta

Diretório de **infra do vault**. Não é conteúdo — é o que faz o vault funcionar.

## Conteúdo

- `templates/` — templates Templater (meeting, person, company, project, daily, area, resource, MOC).
- `obsidian-config/` — guia de plugins e configuração recomendada do Obsidian.
- `sync-state.json` — estado do sync engine (last_synced_at por fonte, IDs vistos). Criado pelo `init-vault.sh`. **Não editar manualmente.**

## Recomendação

Adicione `_meta/` aos arquivos excluídos da busca global do Obsidian:

**Settings → Files & Links → Excluded files:** `_meta/`

Templates continuam funcionando normalmente — exclusão só afeta busca, não os plugins.
