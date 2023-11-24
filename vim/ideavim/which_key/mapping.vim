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

" Mode change
nnoremap <Space>mz :action ToggleZenMode<CR>
nnoremap <Space>mp :action TogglePresentationMode<CR>

" Refactor
nnoremap <Space>rr :action RenameElement<CR>

" Window Commands
nnoremap <Space>wha :action HideAllWindows<CR>
nnoremap <Space>whs :action HideSideWindows<CR>
nnoremap <Space>wss :action ActivateStructureToolWindow<CR>

" History
nnoremap <Space>hh :action LocalHistory.ShowHistory<CR>
vnoremap <Space>hh :action LocalHistory.ShowSelectionHistory<CR>
nnoremap <Space>hp :action LocalHistory.PutLabel<CR>

" Git / VCS Generic
" Annotate aka 'Git Blame'
nnoremap <Space>ga :action Annotate<CR>
nnoremap <Space>gb :action Git.Branches<CR>
nnoremap <Space>gcb :action Git.CompareWithBranch<CR>
nnoremap <Space>gct :action Git.CompareWithTag<CR>

nnoremap <Space>gm :action Git.ContextMenu<CR>
vnoremap <Space>gm :action Git.ContextMenu<CR>

nnoremap <Space>gh :action Vcs.ShowTabbedFileHistory<CR>
vnoremap <Space>gh :action Vcs.ShowHistoryForBlock<CR>
