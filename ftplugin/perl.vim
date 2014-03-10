
" TEST: not sure what this does ....  :-)
let perl_include_pod = 1
let perl_extend_vars = 1

nmap <leader>t :%! perltidy -pro=$HOME/.vim/perltidyrc -q<CR>
vmap <leader>t :! perltidy  -pro=$HOME/.vim/perltidyrc -q<CR>

" Uppercase K on a keyword look it up in perldoc
set keywordprg=perldoc\ -f





" Make perlomni use SuperTabs tab 
" DISABLED: Omni does not do keyword completion???
"call SuperTabSetDefaultCompletionType("<c-x><c-o>")
" ?g:SuperTabContextDefaultCompletionType*
