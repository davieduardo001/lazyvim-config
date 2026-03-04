# Project Overview
Modular LazyVim installation for Fedora-based distros. The goal is to provide a clean, automated way to set up Neovim v0.11.6+ with all required dependencies (lazygit, fzf, ripgrep, etc.) on Fedora systems.

# Technology Stack
- **Language**: Bash (Shell Script)
- **Editor**: Neovim (v0.11.6 stable)
- **Package Manager**: DNF (Fedora native)
- **Version Control**: Git

# Coding Standards
- Use `set -e` in all scripts for robust error handling.
- Maintain a modular structure: separate scripts for dependencies (`install_deps.sh`), Neovim installation (`install_neovim.sh`), and configuration setup (`setup_config.sh`).
- Use ANSI color codes for clear terminal feedback (BLUE for information, GREEN for success).

# Project Structure
```
.
├── AGENTS.md
├── README.md
├── install.sh
├── nvim/ (LazyVim starter files)
└── scripts/
    ├── install_deps.sh
    ├── install_neovim.sh
    └── setup_config.sh
```

# External Resources
- [LazyVim Official Docs](https://lazyvim.org): Primary source for configuration and plugin management.
- [Neovim GitHub](https://github.com/neovim/neovim): Source for binary releases and core editor development.

# Additional Context
Owned and maintained by `davieduardo001`. The configuration is based on the official LazyVim starter template but customized for Fedora's specific package naming and binary paths.

# Build Steps
To install the configuration:
1. Ensure you have sudo privileges.
2. Run `./install.sh` from the root directory.
