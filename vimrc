set background=dark
"colorscheme ir_black_my
colorscheme vibrantink
highlight Folded guibg=#111111

hi TabLineSel guifg=green guibg=darkgray gui=NONE ctermfg=green ctermbg=darkgray cterm=NONE 
hi TabLineFill guifg=darkgray guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline 
hi TabLine guifg=darkgray guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline

" for quickfixsign
"highlight SignColumn ctermbg=Black guibg=Black
"highlight SignColumn guifg=darkgray guibg=black gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline
"


"let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]
let g:fuf_modesDisable = [ 'mrucmd' ]

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set autoindent
set shiftwidth=4
set softtabstop=4
set shiftround
set tabstop=4
set expandtab
set hlsearch
" Enable incremental search
set incsearch
set cursorline
set ruler
" Automatically read buffer if file has changed on disk... (typically after a
" git checkcheckout or simmilar....
set autoread

" Make vimdiff ignore whitespace changes.
set diffopt+=iwhite

" Jump to tag
map <F9> <C-]>
" back from tag
map <S-F9> <C-T>
"map <F8> <C-T>

" My addons.....
let mapleader = ","
map <F12> <C-^>
" Fuzzy search in tagged files.
map <C-F12> :FufTaggedFile<CR>
" Fuzzy serach in file recursively from cwd
map <S-F12> :FufCoverageFile<CR>
map <F7> :FufCoverageFile<CR>

map <leader>m :FufMruFile<CR>
"map <leader>n :NERDTreeToggle<CR>
map <leader>n :NERDTreeFind<CR>
map <leader>N :NERDTreeMirror<CR>

" Jump to tag
map <F11> <C-]>
" Jump back from tag
map <S-F11> <C-T>
" Fuzzy tag find 
map <C-F11> :FufTag<CR>
" Create a new tags file in the current directory.
map <S-C-F11> :!makeperltags<CR>

" Create a new tab window
map <F5> :tabnew<cr>
map <C-F5> :tabclose<cr>
" Next and prev. tab
map <PageDown> <C-PageDown>
map <PageUp> <C-PageUp>
imap <PageDown> <C-PageDown>
imap <PageUp> <C-PageUp>

" Easy navigation between 'split' windows
map <C-LEFT> <C-w>h
map <C-RIGHT> <C-w>l
map <C-UP> <C-w>k
map <C-DOWN> <C-w>j

" ....... my Perl specific stuff ......................
iab papp :r ~/.vim/code_templates/perl_application.pl<CR>
iab pmod :r ~/.vim/code_templates/perl_module.pm<CR>

iab luf MCR::lookup_file('TODO');
iab lufp MCR::lookup_file('TODO')->path(); 

set iskeyword+=:

" TEST: not sure what this does ....  :-)
let perl_include_pod = 1
let perl_extend_vars = 1

nmap <leader>t :%! perltidy -pro=$HOME/.vim/perltidyrc -q<CR>
vmap <leader>t :! perltidy  -pro=$HOME/.vim/perltidyrc -q<CR>

" do not scan @INC when autocompleting. Way too slow :-(
set complete-=i

"............. Ack
"map <F6> :tabnew<CR>:AckFromSearch . -a ~algo/autodoc/jcl<CR>
"map <F6> :tabnew<CR>:AckFromSearch . --perl --shell  ~algo/autodoc/jcl<CR>
"map <F6> :tabnew<CR>:AckFromSearch . --perl --shell <CR>

map <F2> :cf quickfix.vim<CR>:copen<CR>
map <S-F2> :cf quickfix.vim_sorted<CR>:copen<CR>

" Next Quickfix (F.ex for use with result from :Ack)
map <F3> :cprev<cr>
map <F4> :cnext<cr>

map <F6> :tabnew<CR>:LAckFromSearch .  --type-add perl=.cfg --perl --shell <CR>
map <F7> :lprev<cr>
map <F8> :lnext<cr>

"................. Session options ..............
"nmap <leader>s :mksession! $HOME/.vimsession<CR>
"nmap <leader>S :mksession! $HOME/.vimsession<CR>:qa<CR>
"nmap <leader>r :source $HOME/.vimsession<CR>

" Use vimsession in current directory................
nmap <leader>s :mksession! .vimsession<CR>
nmap <leader>S :mksession! .vimsession<CR>:qa<CR>
nmap <leader>r :source .vimsession<CR>
