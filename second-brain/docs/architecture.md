# Arquitetura

## Princípios

1. **Vault como fonte da verdade.** Todas as edições acontecem dentro do Obsidian. As fontes externas alimentam o vault, mas não recebem updates de volta.
2. **Sync incremental e idempotente.** Re-rodar o sync nunca duplica conteúdo nem destrói edições manuais. Cada fonte mantém checkpoints em `_meta/sync-state.json`.
3. **Identidade canônica.** Pessoas, empresas e projetos vivem em uma nota só. Aliases no frontmatter resolvem variações ("Acme", "Acme Corp", "ACME").
4. **Cross-linking explícito via frontmatter.** Wikilinks em campos como `participants`, `companies`, `projects` permitem queries Dataview ricas sem depender de extração de texto.
5. **Privacidade por isolamento físico.** Vaults `Work/` e `Personal/` separados — sem chance de vazamento entre contextos.

## Componentes

```
[Fonte MCP/API] → [Adapter] → [Normalizer] → [Entity Extractor (LLM)]
                                                    ↓
                                      [Vault Resolver: fuzzy match aliases]
                                                    ↓
                                      [Markdown Writer: frontmatter + wikilinks]
                                                    ↓
                                                [Vault]
```

| Componente | Responsabilidade |
|---|---|
| **Adapter** | Conversa com a fonte (Notion, Read.ai, GitHub, M365) e devolve registros brutos. Um por fonte. |
| **Normalizer** | Padroniza schema: id, data, autor, conteúdo, tipo, raw. |
| **Entity Extractor** | LLM extrai pessoas, empresas, projetos e tópicos do conteúdo. |
| **Vault Resolver** | Tenta achar nota existente em `30_People/`, `40_Companies/`, `50_Projects/` por título ou alias. Cria stub se não acha. |
| **Markdown Writer** | Renderiza para markdown com frontmatter e wikilinks. Idempotente: arquivo já existente é mesclado, não sobrescrito. |
| **Sync State** | `_meta/sync-state.json` guarda `last_synced_at`, IDs vistos, hashes para detectar updates. |

## Schema de frontmatter

Comum a todas as notas:

```yaml
id: <slug-único>
type: meeting | person | company | project | area | resource | daily | moc
tags: []
privacy: business | personal
```

Específicos por tipo — ver `vault-template/_meta/templates/`.

## Fontes

| Fonte | Tipo | Destino primário | Notas |
|---|---|---|---|
| Read.ai | Reuniões (transcript, summary, action items) | `20_Meetings/` | Privacidade detectada por flag da reunião → roteia para vault Work ou Personal. |
| Notion | Páginas e databases | `70_Resources/` (default), pode ser específico por database | Usuário define mapeamento por database. |
| GitHub | READMEs e issues | `70_Resources/` ou `50_Projects/` | Apenas repositórios que o usuário marcar. |
| M365 SharePoint | Documentos e OneNote (parcial) | `70_Resources/` | Cobertura de OneNote pode ser limitada — ver setup.md. |

## Privacidade & vaults separados

- **Work vault**: tudo que veio de fontes business (Read.ai marcado business, Notion workspace de trabalho, GitHub).
- **Personal vault**: Read.ai marcado personal, conteúdo manual, OneNote pessoal.
- Sync engine recebe `--vault work|personal` e filtra adequadamente.
- Sem cross-link entre vaults — se quiser referenciar algo de um no outro, é cópia manual deliberada.

## Resolução de identidade

Toda nota de tipo "person" e "company" tem campo `aliases: []` no frontmatter. O Vault Resolver:

1. Procura match exato no título do arquivo.
2. Se falhar, procura em `aliases` de todas as notas do tipo.
3. Se falhar, faz fuzzy match (ratio > 0.85).
4. Se ainda falhar, cria stub com `<% nome detectado %>` e lista no Inbox para revisão.

Stubs ficam marcados com `status: stub` no frontmatter para fácil filtragem.

## Loop de auto-link (Fase 6)

Periodicamente:

1. Para cada nota tipo `meeting` recente, sugere wikilinks faltantes (pessoas/empresas/projetos mencionados no texto mas não no frontmatter).
2. Para cada cluster de notas com tags em comum, sugere criação/atualização de MOC em `90_MOCs/`.
3. Detecta notas órfãs (sem links de entrada nem saída) e lista para revisão.

Sugestões nunca são aplicadas automaticamente — vão para um relatório em `00_Inbox/auto-link-YYYY-MM-DD.md`.
