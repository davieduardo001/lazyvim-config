#!/bin/bash
# scripts/setup_config.sh
set -e
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🚀 Setting up LazyVim configuration...${NC}"

# Backup
mv ~/.config/nvim{,.bak} 2>/dev/null || true
mv ~/.local/share/nvim{,.bak} 2>/dev/null || true
mv ~/.local/state/nvim{,.bak} 2>/dev/null || true
mv ~/.cache/nvim{,.bak} 2>/dev/null || true

# Copy from project to ~/.config/nvim
mkdir -p ~/.config/nvim
cp -r ./nvim/* ~/.config/nvim/

echo -e "${BLUE}✅ Configuration moved to ~/.config/nvim.${NC}"
