
" Source common settings
let s:common_dir = expand('<sfile>:p:h:h')
let s:vim_dir    = s:common_dir . '/vim'

exec 'source ' . s:common_dir . '/common.vim'

exec 'source ' . s:vim_dir . '/plugins.vim'
exec 'source ' . s:vim_dir . '/settings.vim'
