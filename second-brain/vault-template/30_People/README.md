# 30 — People

Uma nota por pessoa. CRM-light pessoal.

## Nomeação

Nome canônico, sem acentos onde der ambiguidade. Variações de grafia entram em `aliases:` no frontmatter:

```yaml
aliases: ["João S.", "J. Silva", "joao.silva@empresa.com"]
```

O Vault Resolver (Fase 2+) usa `aliases` para evitar que "João Silva", "João S." e "joao silva" virem três notas diferentes.

## O que colocar

- Empresas onde trabalha (wikilink para `40_Companies/`).
- Função, contexto de relacionamento.
- Resumo de conversas marcantes.
- Histórico de reuniões e action items (gerado automaticamente via Dataview, ver template).

## Stubs

Notas criadas pelo sync engine sem informação completa têm `status: stub` no frontmatter. Filtre periodicamente:

```dataview
LIST FROM "30_People"
WHERE status = "stub"
```

E enriqueça manualmente.
