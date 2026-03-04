# Fedora LazyVim Modular Config

This project provides a modular installation script for [LazyVim](https://lazyvim.org) on Fedora-based distributions. It ensures you have the latest Neovim (v0.11.6+) and all necessary dependencies.

## 🚀 Features
- **Modular Design**: Installation is split into dependency management, Neovim installation, and configuration setup.
- **Latest Neovim**: Automatically downloads and installs Neovim v0.11.6+ (built with LuaJIT).
- **Fedora Optimized**: Uses `dnf` to install all required dependencies including `lazygit`, `fzf`, `ripgrep`, and more.
- **Automatic Nerd Font**: Installs Hack Nerd Font v3.0 if not already present.

## 🛠️ Installation

Simply clone this repository and run the install script:

```bash
git clone git@github.com:davieduardo001/lazyvim-config.git
cd fedora-lazyvim-config
chmod +x install.sh
./install.sh
```

The script will:
1. Backup your existing `~/.config/nvim` if it exists.
2. Install Fedora dependencies via `dnf`.
3. Download and install the latest Neovim binary to `/usr/local`.
4. Setup the LazyVim starter configuration in `~/.config/nvim`.

## 📦 Dependencies
The following dependencies are verified and installed:
- Neovim >= 0.11.2 (Latest stable used)
- Git >= 2.19.0
- Hack Nerd Font v3.0+
- Lazygit (Terminal UI)
- Tree-sitter-cli
- C compiler (gcc-c++)
- Curl
- FZF (Fuzzy finder)
- Ripgrep (Live grep)
- FD (Find files)

## ⌨️ Post-Installation
After installation, open Neovim:
```bash
nvim
```
Then run `:LazyHealth` to verify the environment.

## 🤝 Contribution
Feel free to open issues or PRs!
