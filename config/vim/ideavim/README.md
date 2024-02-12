# IdeaVim config

Configuration files for the IdeaVim plugin for Intellij IDEA family of IDE

## What is IdeaVim?

IdeaVim emulates Vim and provides Vim keybindings from within IDEA. Config for IdeaVim is
similar, but does deviate in some ways from it's Vim/Neovim counterparts.

## Setting up

Source the main file from the default IdeaVim configuration (typically ~/.ideavimrc)

Vimscript in IdeaVim is more limited than its Vim/Neovim counterparts. The init.vim file being
sourced cannot determine the it's own path. For that reason, we need to provide it with it's
own path and invoke via function call.

We need to pass in multiple directory path strings explicitly (since it has less functionality to
derive relative paths). This leads to some redundancy in the root file from which the others are
sourced.

```vim
let vim_conf_dir     = '<PATH_TO_ROOT_OF_REPO_>/config/vim'
let ideavim_conf_dir = vim_conf_dir . '/ideavim'

source <PATH_TO_ROOT_OF_REPO>/vim/ideavim/init.vim

" Call init to load the config from the various source files
call Init(vim_conf_dir, ideavim_conf_dir)

```
