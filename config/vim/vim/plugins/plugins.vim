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
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'preservim/nerdtree'
Plug 'michaeljsmith/vim-indent-object'
Plug 'dbakker/vim-paragraph-motion'
Plug 'chrisbra/matchit'

Plug 'mbbill/undotree'

Plug 'liuchengxu/vim-which-key'

" Git functionality
Plug 'tpope/vim-fugitive'

" Fuzzy-finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Vim signify
" Adds Git gutter
if has('nvim') || has('patch-8.0.902')
  Plug 'mhinz/vim-signify'
else
  Plug 'mhinz/vim-signify', { 'tag': 'legacy' }
endif

" Syntax Highlighting
Plug 'jvirtanen/vim-hcl'

" Tmux + Shell interop
Plug 'christoomey/vim-tmux-navigator'

call plug#end()

