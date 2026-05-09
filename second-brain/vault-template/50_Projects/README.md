# 50 — Projects

Projetos **com prazo definido**. Se não tem fim, é uma Area (60_Areas/), não um Project.

## Frontmatter

```yaml
type: project
status: active | paused | completed | cancelled
start_date: YYYY-MM-DD
end_date:                # vazio enquanto ativo
companies: ["[[Cliente]]"]
participants: ["[[Pessoa 1]]", "[[Pessoa 2]]"]
priority: low | medium | high
```

## Conteúdo típico

- Objetivo (uma frase).
- Escopo e não-escopo.
- Status atual (atualizado regularmente).
- Action items abertos (Dataview puxa de reuniões e da própria nota).
- Reuniões relacionadas (Dataview).

## Quando arquivar

Quando `status` muda para `completed` ou `cancelled`, mova para `80_Archive/50_Projects/<ano>/`. O frontmatter preserva o histórico; queries Dataview podem incluir Archive opcionalmente.
