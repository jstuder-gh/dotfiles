" Plugins managed with VimPlug

if has('nvim')
	let s:editor_root=expand("~/.local/share/nvim/")
else
	let s:editor_root=expand("~/.vim/")
endif
call plug#begin(s:editor_root . 'plugged/')

" Colors-  Molokai
Plug 'tomasr/molokai'

"
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'michaeljsmith/vim-indent-object'
Plug 'dbakker/vim-paragraph-motion'
Plug 'chrisbra/matchit'

Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme molokai
