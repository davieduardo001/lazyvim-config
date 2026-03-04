#!/bin/bash

# LazyVim Modular Installation for Fedora-based distros
# Author: Gemini CLI

set -e

# Color codes
GREEN='\033[0;32m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🚀 Starting LazyVim Modular Installation for Fedora...${NC}"

# Make scripts executable
chmod +x scripts/*.sh

# Run modules
./scripts/install_deps.sh
./scripts/install_neovim.sh
./scripts/setup_config.sh

echo -e "${GREEN}✅ All done! Run 'nvim' to enjoy LazyVim.${NC}"

