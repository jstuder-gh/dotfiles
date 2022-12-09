# Vim/Neovim config

Configuration files for Vim/Neovim

## Setting up

Source the main file from the default Vim/Neovim configuration.

For Vim this is typically `~/.vimrc`

For Neovim, this is typically `~/.config/nvim/init.vim`

```vim
let $VIM_CONF_SRC_DIR = $HOME . '<PATH_TO_ROOT_OF_REPO>/vim'
source ${VIM_CONF_SRC_DIR}/vim/init.vim
```

## Plugins

Plugins are managed using VimPlug

See:

https://github.com/junegunn/vim-plug