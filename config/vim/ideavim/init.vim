" Load IdeaVim config files
"
function! Init(parent_dir, dir)
	exec 'source ' . a:parent_dir . '/common.vim'

	exec 'source ' . a:dir . '/plugins.vim'
	exec 'source ' . a:dir . '/mapping.vim'
	exec 'source ' . a:dir . '/which_key/mapping.vim'
endfunction
