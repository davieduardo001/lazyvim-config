#!/bin/bash
# scripts/install_neovim.sh
set -e
BLUE='\033[0;34m'
NC='\033[0m'

NVIM_VERSION="v0.11.6"
DOWNLOAD_URL="https://github.com/neovim/neovim/releases/download/${NVIM_VERSION}/nvim-linux-x86_64.tar.gz"

echo -e "${BLUE}✨ Installing Neovim ${NVIM_VERSION}...${NC}"

# Ensure /usr/local/bin exists and is in PATH
sudo mkdir -p /usr/local/bin

wget "$DOWNLOAD_URL" -O nvim-linux.tar.gz
# Extract to a dedicated directory to avoid mess
sudo mkdir -p /opt/nvim
sudo tar -C /opt/nvim -xzf nvim-linux.tar.gz --strip-components=1
rm nvim-linux.tar.gz

# Create symlink
sudo ln -sf /opt/nvim/bin/nvim /usr/local/bin/nvim

echo -e "${BLUE}✅ Neovim installed successfully to /usr/local/bin/nvim.${NC}"
# Check if /usr/local/bin is in PATH
if [[ ":$PATH:" != *":/usr/local/bin:"* ]]; then
    echo -e "\033[0;33m⚠️  Warning: /usr/local/bin is not in your PATH. You might need to add it to your ~/.bashrc or ~/.zshrc.\033[0m"
fi
