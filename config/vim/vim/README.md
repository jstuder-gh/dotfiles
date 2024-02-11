# Vim/Neovim config

Configuration files for Vim/Neovim

## Setting up

Source the main file from the default Vim/Neovim configuration.

For Vim this is typically `~/.vimrc`

For Neovim, this is typically `~/.config/nvim/init.vim`

```vim
" Assuming env var set in .bashrc
let $VIM_CONF_SRC_DIR = $JRS_DOTFILES_CONFIG_PATH . '/vim'
source ${VIM_CONF_SRC_DIR}/vim/init.vim
```

## Plugins

Plugins are managed using VimPlug

See:

https://github.com/junegunn/vim-plug
