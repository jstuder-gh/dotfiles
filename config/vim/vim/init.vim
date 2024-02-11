
" Source common settings
let s:common_script_dir = expand('<sfile>:p:h:h')
let g:vim_script_dir    = s:common_script_dir . '/vim'

exec 'source ' . s:common_script_dir . '/common.vim'

exec 'source ' . g:vim_script_dir . '/platform.vim'
exec 'source ' . g:vim_script_dir . '/plugins.vim'
exec 'source ' . g:vim_script_dir . '/settings.vim'

exec 'source ' . g:vim_script_dir . '/utility.vim'

exec 'source ' . g:vim_script_dir . '/which_key/mapping.vim'
