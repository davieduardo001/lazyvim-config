#!/bin/bash
# scripts/install_deps.sh
set -e
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}🛠️ Installing Dependencies for Fedora...${NC}"

# Enable COPR for lazygit
sudo dnf copr enable -y dejan/lazygit

# Install common tools
sudo dnf install -y 
    git 
    lazygit 
    fd-find 
    curl 
    ripgrep 
    tree-sitter-cli 
    fzf 
    gcc-c++ 
    lua-devel 
    wget 
    tar 
    unzip 
    fontconfig

# Install Nerd Font if needed
if ! fc-list | grep -qi "Nerd Font"; then
    echo -e "${BLUE}🔡 Installing Hack Nerd Font...${NC}"
    mkdir -p ~/.local/share/fonts
    wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.0.0/Hack.zip
    unzip Hack.zip -d ~/.local/share/fonts
    fc-cache -f
    rm Hack.zip
fi
