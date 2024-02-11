"
" Actions initiated with Space and used in conjunction with Which-Key
"
" WIP

" Buffer bindings
nnoremap <Space>bd :bd<CR>

" NERDTree bindings
nnoremap <Space>nn :NERDTree<CR>
nnoremap <Space>nt :NERDTreeToggle<CR>
nnoremap <Space>nf :NERDTreeFind<CR>
nnoremap <Space>nr :NERDTreeRefreshRoot<CR>

" Git / VCS
" Annotate aka 'Git Blame'
" Note: uses Vim-Fugitive (Git) plugin
noremap <Space>ga :Git blame<CR>


" Undo/History
" Note: Uses Undotree plugin
nnoremap <Space>ut :UndotreeToggle<CR>

