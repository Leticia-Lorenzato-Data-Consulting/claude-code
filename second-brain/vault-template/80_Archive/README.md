# 80 — Archive

Tudo que saiu do ativo mas pode precisar ser consultado.

## Quando arquivar

- Project com `status: completed` ou `cancelled`.
- Area que entrou em `status: dormant` por mais de 6 meses.
- Pessoa/empresa sem interação há 2+ anos (opcional).
- Qualquer coisa que polui buscas e não é mais referência viva.

## Estrutura

Espelha a do vault, prefixada por `8X_`:

```
80_Archive/
├── 50_Projects/<ano-de-término>/
├── 60_Areas/
└── ...
```

## Buscas

Por padrão, configure Obsidian para excluir `80_Archive/` de buscas globais (Settings → Files & Links → Excluded files). Inclua na busca explicitamente quando precisar.
