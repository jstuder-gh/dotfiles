"
" Actions available in IdeaVim can be viewed with ":actionlist"
" and searched with ":actionlist <TERM>"

nmap \b <Action>(ToggleLineBreakpoint)

nmap <leader>e <Action>(GotoNextError)
nmap <leader>E <Action>(GotoPreviousError)

nmap <C-h> <Action>(PrevSplitter)
nmap <C-l> <Action>(NextSplitter)

nmap gt <Action>(NextTab)
nmap gT <Action>(PreviousTab)
