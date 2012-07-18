set background=dark
"colorscheme ir_black_my
colorscheme vibrantink
highlight Folded guibg=#111111

hi TabLineSel guifg=green guibg=darkgray gui=NONE ctermfg=green ctermbg=darkgray cterm=NONE 
hi TabLineFill guifg=darkgray guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline 
hi TabLine guifg=darkgray guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline



"let g:fuf_modesDisable = [ 'mrufile', 'mrucmd', ]
let g:fuf_modesDisable = [ 'mrucmd' ]

call pathogen#infect()
call pathogen#helptags()

syntax on
filetype plugin indent on

set autoindent
set shiftwidth=2
set softtabstop=2
"set tabstop=2
set expandtab
set hlsearch
" Enable incremental search
set incsearch
set cursorline
set ruler

" Jump to tag
map <F9> <C-]>
" back from tag
map <S-F9> <C-T>
map <F8> <C-T>

map <F12> <C-^>

" My addons.....
let mapleader = ","
map <F12> <C-^>
" Fuzzy search in tagged files.
map <C-F12> :FufTaggedFile<CR>
" Fuzzy serach in file recursively from cwd
map <S-F12> :FufCoverageFile<CR>

map <leader>m :FufMruFile<CR>
map <leader>n :NERDTreeToggle<CR>
map <leader>N :NERDTreeMirror<CR>

" Jump to tag
map <F11> <C-]>
" Jump back from tag
map <S-F11> <C-T>
" Fuzzy tag find 
map <C-F11> :FufTag<CR>


" Next and prev. tab
map <PageDown> <C-PageDown>
map <PageUp> <C-PageUp>
imap <PageDown> <C-PageDown>
imap <PageUp> <C-PageUp>


