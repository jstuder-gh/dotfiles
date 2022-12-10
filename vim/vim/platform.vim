
" Check if running in Windows under WSL2
"
" Derived from this example:
" https://stackoverflow.com/questions/57014805/check-if-using-windows-console-in-vim-while-in-windows-subsystem-for-linux#answer-57015339
function! IsWindowsWsl2()
	let l:uname = substitute(system('uname'),'\n','','')
	if l:uname == 'Linux'
		let l:lines = readfile("/proc/version")
		if l:lines[0] =~ "Microsoft"
			return 1
		endif
	endif
endfunction

let g:isWindowsWsl2 = IsWindowsWsl2()

if g:isWindowsWsl2
	exec 'source ' . g:vim_script_dir . '/platform/wsl.vim'
else
	exec 'source ' . g:vim_script_dir . '/platform/standard.vim'
endif