# 90 — MOCs (Maps of Content)

Índices temáticos curados manualmente. **Não** confunda com tags.

## Quando criar um MOC

- Você se pega buscando o mesmo tema repetidamente.
- Várias notas de tipos diferentes (reuniões, pessoas, projetos, recursos) tocam o mesmo tópico.
- A tag está virando "lixão" — muita coisa, sem ordem.

Exemplos: `MOC - API Design`, `MOC - Hiring`, `MOC - Investimentos`, `MOC - Acme Corp` (sim, MOCs podem ser sobre uma entidade quando ela tem muito conteúdo).

## Estrutura típica de um MOC

1. **Conceitos centrais** — definições e ideias-chave.
2. **Notas relacionadas** — wikilinks organizados por subseção.
3. **Pessoas-chave** — quem sabe muito sobre o tema.
4. **Recursos externos** — links para Resources/.

Use o template `_meta/templates/moc.md`.

## MOCs podem ter MOCs

Para temas grandes, um MOC raiz aponta para sub-MOCs. Ex: `MOC - Engineering` → `MOC - API Design`, `MOC - Databases`, `MOC - Observability`.
