"
" Actions initiated with Space and used in conjunction with Which-Key
"
" WIP

" Buffer bindings
nnoremap <Space>bd :bd<CR>

" Code bindings
nnoremap <Space>cg :action Generate<CR>
nnoremap <Space>cr :action ReformatCode<CR>

" Debugging bindings
nnoremap <Space>dr :action Resume<CR>
nnoremap <Space>dt :action RunToCursor<CR>

nnoremap <Space>de :action EvaluateExpression<CR>
vnoremap <Space>de :action EvaluateExpression<CR>

" File bindings
nnoremap <Space>ff :action GotoFile<CR>
nnoremap <Space>fr :action RecentFiles<CR>

" NERDTree bindings
nnoremap <Space>nn :NERDTree<CR>
nnoremap <Space>nt :NERDTreeToggle<CR>
nnoremap <Space>nf :NERDTreeFind<CR>
nnoremap <Space>nr :NERDTreeRefreshRoot<CR>

"
nnoremap <Space>sf :action FindUsages<CR>

" Window
nnoremap <Space>wh :action HideActiveWindow<CR>

" Mode change
nnoremap <Space>mz :action ToggleZenMode<CR>
nnoremap <Space>mp :action TogglePresentationMode<CR>

" Refactor
nnoremap <Space>rr :action RenameElement<CR>
