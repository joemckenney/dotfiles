# dotfiles

Personal dotfiles, managed with symlinks.

## Contents

| Config | Description |
|--------|-------------|
| `nvim/` | Neovim config (kickstart.nvim based, Lua) |
| `foot/` | Foot terminal emulator |
| `fuzzel/` | Fuzzel launcher |
| `dwl/` | dwl autostart script (kanshi + somebar) |
| `wlr-which-key/` | Key chord menu |
| `kanshi/` | Monitor profiles |
| `zshrc` | Zsh config (oh-my-zsh, plugins, PATH) |
| `zprofile` | Zsh login profile |
| `tmux.conf` | Tmux config (vi keys, prefix rebind) |

## Setup

```bash
# ~/.config directories
ln -s ~/code/dotfiles/nvim ~/.config/nvim
ln -s ~/code/dotfiles/foot ~/.config/foot
ln -s ~/code/dotfiles/fuzzel ~/.config/fuzzel
ln -s ~/code/dotfiles/dwl ~/.config/dwl
ln -s ~/code/dotfiles/wlr-which-key ~/.config/wlr-which-key
ln -s ~/code/dotfiles/kanshi ~/.config/kanshi

# Home directory dotfiles
ln -s ~/code/dotfiles/zshrc ~/.zshrc
ln -s ~/code/dotfiles/zprofile ~/.zprofile
ln -s ~/code/dotfiles/tmux.conf ~/.tmux.conf
```
