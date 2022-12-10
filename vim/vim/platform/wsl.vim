"

let s:powershell = 'powershell.exe'

let s:clip  = '/mnt/c/Windows/System32/clip.exe'  " change this path according to your mount point
let s:paste = s:powershell . ' -Command Get-Clipboard'

" WSL yank support
"
" Derived from below, but modified so that no all yanks are put in clipboard
" Arbitrary register 'q' is used as buffer, which could lead to conflict
"
" https://www.reddit.com/r/bashonubuntuonwindows/comments/be2q3l/how_do_i_copy_whole_text_from_vim_to_clipboard_at/#t1_el2vx7u
"
" NOTE: If WSL terminal font is Consolas,
" pasting via powershell causes the font to be forcibly changed to raster
"
" https://github.com/microsoft/terminal/issues/367
"
" It's irritating, but it's not so bad that I'm about to start mucking around in registry
" It does not seem to happen with other fonts so an easy "fix" is to just use
" another font lib
"
" https://github.com/microsoft/terminal/issues/280#issuecomment-429919074
"
if executable(s:clip) && executable(s:powershell)
	function! DoClipboard()
		if v:event['operator'] ==# 'y' && v:event['regname'] ==# 'q'
			call system(s:clip, @q)
			echo "Copied to clipboard"
		endif
	endfunction

	function! DoPasteClipboard()
		let l:clip = system(s:paste)
		execute 'normal! i' . l:clip
	endfunction

	augroup WSLYank
		autocmd!
		autocmd TextYankPost * call DoClipboard()
	augroup END

	nnoremap <silent> <leader>p :call DoPasteClipboard()<CR>
	vnoremap <leader>y "qy
endif


