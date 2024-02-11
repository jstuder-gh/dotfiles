"
" Actions available in IdeaVim can be viewed with ":actionlist"
" and searched with ":actionlist <TERM>"

" mapping copy/paste to system clipboard
" NOTE: IdeaVim recognizes the plus (+) unnamed register as system clipboard just like standard Vim impls
nnoremap <leader>p "+p
vnoremap <leader>y "+y

nmap \b <Action>(ToggleLineBreakpoint)

nmap [e <Action>(GotoPreviousError)
nmap ]e <Action>(GotoNextError)

nmap <C-h> <Action>(PrevSplitter)
nmap <C-l> <Action>(NextSplitter)

nmap gt <Action>(NextTab)
nmap gT <Action>(PreviousTab)
