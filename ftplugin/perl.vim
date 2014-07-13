
" TEST: not sure what this does ....  :-)
let perl_include_pod = 1
let perl_extend_vars = 1

nmap <leader>t :%! perltidy -pro=$HOME/.vim/perltidyrc -q<CR>
vmap <leader>t :! perltidy  -pro=$HOME/.vim/perltidyrc -q<CR>

" Uppercase K on a keyword look it up in perldoc
set keywordprg=perldoc\ -f

" ....... my Perl specific stuff ......................
iab papp :r ~/.vim/code_templates/perl_application.pl<CR>
iab pmod :r ~/.vim/code_templates/perl_module.pm<CR>

iab luf MCR::lookup_file('TODO');
iab lufp MCR::lookup_file('TODO')->path(); 

set iskeyword+=:

" do not scan @INC when autocompleting. Way too slow :-(
set complete-=i





" Make perlomni use SuperTabs tab 
" DISABLED: Omni does not do keyword completion???
"call SuperTabSetDefaultCompletionType("<c-x><c-o>")
" ?g:SuperTabContextDefaultCompletionType*
