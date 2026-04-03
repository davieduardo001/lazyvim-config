# nvim config

My personal Neovim config built on top of [LazyVim](https://lazyvim.github.io).

## Requirements

- **Neovim** >= 0.9.0
- **Git**
- A [Nerd Font](https://www.nerdfonts.com/) set in your terminal
- `ripgrep` — for Telescope live grep (`brew install ripgrep` / `sudo apt install ripgrep` / `sudo dnf install ripgrep`)
- `fd` — for Telescope file finding (`brew install fd` / `sudo apt install fd-find` / `sudo dnf install fd-find`)
- `node` + `npm` — for LSP servers installed via Mason
- A C compiler (`gcc` / `clang`) — for Treesitter parsers

## Install

> Backup your existing config first if you have one.

```bash
# Backup
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak

# Clone
git clone git@github.com:davieduardo001/lazyvim-config.git ~/.config/nvim
```

Then just run `nvim`. [lazy.nvim](https://github.com/folke/lazy.nvim) will bootstrap itself and install all plugins automatically on first launch.

## Updating plugins

Inside Neovim:

```
:Lazy sync
```

This updates all plugins and regenerates `lazy-lock.json`. Commit the lock file afterwards to keep your config reproducible across machines.

> **Note:** LazyVim itself is just a plugin — it only updates when you run `:Lazy sync`. Your config won't change on its own.

## Structure

```
~/.config/nvim/
├── init.lua              # entry point
├── lazy-lock.json        # pinned plugin versions
├── lazyvim.json          # enabled LazyVim extras
└── lua/
    ├── config/
    │   ├── autocmds.lua  # custom autocommands
    │   ├── keymaps.lua   # custom keymaps
    │   ├── lazy.lua      # lazy.nvim bootstrap + config
    │   └── options.lua   # vim options
    └── plugins/
        ├── colorscheme.lua  # min-theme
        └── example.lua     # plugin overrides / extras
```
