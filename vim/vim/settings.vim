"
set nocompatible

" Attempt to determine the type of a file based on it's name and possibly it's
" contents. Use this to allow intelligent auto-indenting for each filetype,
" and for plugins that are filetype specific
filetype indent plugin on

" Turn on autoindent for suitable filetypes
set autoindent

" Enable syntax highlighting
syntax on

" Set default file encoding to utf8
set encoding=utf-8

" Opening a new file when the current buffer has unsaved changes
" causes files to be hidden instead of closed.
set hidden

" Enables "enhanced mode" of command-line completion.
" See :help wildmenu
set wildmenu

" Allow backspace over more things in insert mode
set backspace=indent,eol,start

" show current line+column
" show relative position in file/buffer
set ruler

" display status line always
set laststatus=2

" prompt to save file on quit
set confirm

" disable visual bell
set t_vb=

" use mouse
set mouse=a

" make command area just a bit taller
set cmdheight=2

" Highlight the current line
set cursorline

" Redraw only when necessary
set lazyredraw

" use <F11> to toggle between 'paste' and 'nopaste'
set pastetoggle=<F11>

" enable folding (if not in vimdiff)
if !&diff
	set foldenable
	set foldmethod=syntax
	set foldlevelstart=20
endif

" visually indicate given column
setlocal colorcolumn=100

"
au CursorHold * checktime

" easier split navigation from home row
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" highlight trailing whitespace and tab characters
augroup Whitespace
	highlight ExtraWhitespace ctermbg=red guibg=red

	" priority 11; greater than default
	call matchadd('ExtraWhitespace', '\(\t\)\|\(\s\+$\)', 11)
augroup END

" by default, create new splits below (split) or below (vsplit)
set splitbelow
set splitright

" remap j and k to virtual line motions, unless used with a count
noremap <silent> <expr> j (v:count == 0 ? 'gj' : 'j')
noremap <silent> <expr> k (v:count == 0 ? 'gk' : 'k')
