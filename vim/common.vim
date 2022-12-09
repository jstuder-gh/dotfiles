" Contains various settings that are implemented across the various Vim
" instances + IDEs
"
"

let mapleader=","

set number
set relativenumber

" Show command status
set showcmd

" Show current mode (Normal, insert, visual, etc)
set showmode

" do not force cursor back to start of line for some navigational command
set nostartofline

"
set incsearch

" highlight matches with the last search pattern
set hlsearch

" ignore case in search patterns
set ignorecase

" don't ignore case in search if pattern is uppercase
set smartcase

" quickly timeout on keycodes, but never timeout on mappings
set notimeout ttimeout ttimeoutlen=200

" Disable prior search pattern highlight
nnoremap <leader><space> :nohlsearch<CR>

" Yank full line mapping
noremap Y y$

" mapping copy/paste to system clipboard
nnoremap <leader>p "+p
vnoremap <leader>y "+y

" toggle relative numbers with leader+n
function! RelativeNumToggle()
	if(&relativenumber)
		set norelativenumber
	else
		set relativenumber
	endif
endfunc
nnoremap <leader>n :call RelativeNumToggle()<CR>
