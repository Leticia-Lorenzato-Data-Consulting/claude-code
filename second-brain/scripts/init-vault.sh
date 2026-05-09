#!/usr/bin/env bash
# Instancia um vault Obsidian a partir do template em second-brain/vault-template/.
# Uso: ./init-vault.sh <caminho-do-vault>
# Exemplo: ./init-vault.sh ~/Documents/Obsidian/Work

set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Uso: $0 <caminho-do-vault>"
    echo "Exemplo: $0 ~/Documents/Obsidian/Work"
    exit 1
fi

TARGET="$1"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
TEMPLATE_DIR="$SCRIPT_DIR/../vault-template"

if [ ! -d "$TEMPLATE_DIR" ]; then
    echo "Erro: template não encontrado em $TEMPLATE_DIR" >&2
    exit 1
fi

if [ -e "$TARGET" ]; then
    echo "Erro: $TARGET já existe. Recusando sobrescrever." >&2
    echo "Remova manualmente ou escolha outro caminho." >&2
    exit 1
fi

mkdir -p "$(dirname "$TARGET")"
cp -r "$TEMPLATE_DIR" "$TARGET"

# Inicializa sync-state.json com timestamp atual
cat > "$TARGET/_meta/sync-state.json" <<EOF
{
  "version": 1,
  "created_at": "$(date -u +%Y-%m-%dT%H:%M:%SZ)",
  "sources": {}
}
EOF

echo "Vault criado em: $TARGET"
echo ""
echo "Próximos passos:"
echo "  1. Abrir Obsidian → 'Open folder as vault' → $TARGET"
echo "  2. Habilitar Community Plugins"
echo "  3. Instalar plugins recomendados (ver _meta/obsidian-config/README.md)"
