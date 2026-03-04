#!/bin/bash
# scripts/install_neovim.sh
set -e
BLUE='\033[0;34m'
NC='\033[0m'

NVIM_VERSION="v0.11.6"
DOWNLOAD_URL="https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux-x86_64.tar.gz"

echo -e "${BLUE}✨ Installing Neovim ${NVIM_VERSION}...${NC}"

wget "$DOWNLOAD_URL" -O nvim-linux.tar.gz
sudo tar -C /usr/local -xzf nvim-linux.tar.gz --strip-components=1
rm nvim-linux.tar.gz
echo -e "${BLUE}✅ Neovim installed successfully.${NC}"
