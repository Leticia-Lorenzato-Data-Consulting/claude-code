# 40 — Companies

Uma nota por empresa: clientes, parceiros, fornecedores, prospects.

## Quando criar

- Cliente ativo ou prospect sério.
- Empresa em que alguém da sua rede trabalha (mesmo se você nunca interagiu diretamente).
- Fornecedor recorrente.

Empresas mencionadas só uma vez em passagem **não** precisam virar nota — uma tag basta.

## Aliases

Variações de nome vão em `aliases:`:

```yaml
aliases: ["Acme", "Acme Corp", "ACME Inc.", "acme.com"]
```

## Frontmatter

```yaml
type: company
status: active | prospect | inactive | churned
industry: 
website: 
```

## Vault separation

No vault `Personal/`, a pasta existe mas geralmente fica vazia ou tem pouco. Mantida para consistência com Work e para casos como "empresa onde meu cônjuge trabalha".
