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
set ignorecase
set smartcase

" Automatically read buffer if file has changed on disk... (typically after a
" git checkcheckout or simmilar....
set autoread
" :DifOrig will make a diff between the current buffer and the content saved to disk
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis | wincmd p | diffthis

" Make vimdiff ignore whitespace changes.
set diffopt+=iwhite

" Jump to tag
map <F9> <C-]>
" back from tag
map <S-F9> <C-T>
"map <F8> <C-T>
" Fuzzy tag find 
map <C-F9> :FufTag<CR>
" Create a new tags file in the current directory.
map <S-C-F9> :!makeperltags<CR>

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
noremap <silent> <F11> :BufExplorer<CR>

" Create a new tab window
map <F5> :tabnew<cr>
map <C-F5> :tabclose<cr>
" Next and prev. tab
map <PageDown> <C-PageDown>
map <PageUp> <C-PageUp>
imap <PageDown> <C-PageDown>
imap <PageUp> <C-PageUp>
" On Mac also support Cmd-arrow ....
map <D-Right> <C-PageDown>
imap <D-Right> <C-PageDown>
map <D-Left> <C-PageUp>
imap <D-Left> <C-PageUp>

" Easy navigation between 'split' windows
map <C-LEFT> <C-w>h
map <C-RIGHT> <C-w>l
map <C-UP> <C-w>k
map <C-DOWN> <C-w>j
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Spell checking in comments
"set spell

" Nice template for new files... (works on :n newfile.pl, but not in NERDtree)
autocmd BufNewFile * silent! 0r ~/.vim/templates/%:e.template 


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



" Configure  SuperTab
set completeopt=longest,menuone,preview
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabLongestEnhanced = 1

" Git statusline
"set statusline+=%{fugitive\#statusline()}
if has('statusline')
         set laststatus=2

         " Broken down into easily includeable segments
         set statusline=%<%f\\   " Filename
         set statusline+=%w%h%m%r " Options
         set statusline+=%{fugitive\#statusline()} "  Git Hotness
         "set statusline+=\\[%{&ff}/%Y]            " filetype
         "set statusline+=\\[%{getcwd()}]          " current dir
         "set statusline+=\\ [A=\\%03.3b/H=\\%02.2B] " ASCII / Hexadecimal value of char
         set statusline+=%=%-14.(%l,%c%V%)\\%p%%  " Right aligned file nav info
endif


" UTF8 encoding stuff: TODO: Verify
set enc=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf8,prc

" .md should be MarDown - not Modula2 :-)
autocmd BufNewFile,BufReadPost *.md set filetype=markdown

" Enable Syntastic for perl (Waring - will run BEGIN code)
let g:syntastic_enable_perl_checker = 1
let g:syntastic_perl_checkers = ['perl']

" CSV file plugin... disable some keyboard shortcuts.
let g:csv_nomap_cr = 1
let g:csv_nomap_space = 1
let g:csv_nomap_enter = 1

" Configure CtrlP (http://kien.github.io/ctrlp.vim/)
" Switch to the git root of the current file when starting ctrl-p
let g:ctrlp_working_path_mode = 'ra'
