set background=dark
colorscheme ir_black_my

"get rid of scrollbar....
set guioptions-=r
set guioptions-=L

set guioptions-=T
if has("gui_running")
  "tell the term has 256 colors
  set t_Co=256
  "colorscheme vibrantink 
  colorscheme ir_black_my
"  set lines=40
"  set columns=115
endif

set nocompatible          " We're running Vim, not Vi!
if has("win32")
set guifont=Consolas:h12
endif
if has("unix")
    if has("gui_macvim")
        set guifont=Monaco:h13
    else
        "set guifont=Monaco:h13
        "set guifont=Screen:h13
        "Bitstream Vera Sans Mono14 
        "Courier New:h16
        "Liberation Mono:h14
        "set guifont=Monospace\ 14
        set guifont=Monospace\ 12
    endif
endif

highlight Folded guibg=#111111
"highlight SignColumn guifg=black guibg=darkgray gui=underline ctermfg=black ctermbg=black cterm=underline
highlight SignColumn guifg=darkgray guibg=#0C0C0C gui=NONE ctermfg=darkgray ctermbg=darkgray cterm=underline

hi TabLineSel guifg=green guibg=darkgray gui=NONE ctermfg=green ctermbg=darkgray cterm=NONE 
hi TabLineFill guifg=darkgray guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline 
hi TabLine guifg=darkgray guibg=NONE gui=NONE ctermfg=darkgray ctermbg=NONE cterm=underline

set cursorcolumn
set cursorline
highlight CursorColumn guibg=#0c0c0c  
highlight CursorLine guibg=#222222  

" On Mac also support Cmd-arrow ....
map <D-Right> <C-PageDown>
imap <D-Right> <C-PageDown>
map <D-Left> <C-PageUp>
imap <D-Left> <C-PageUp>

set iskeyword+=:

"""""" custom menu """"""""""
menu Settings.gvimrc :tabnew<CR>:n $HOME/.gvimrc<CR>
menu Settings.vimrc :tabnew<CR>:n $HOME/.vimrc<CR>
if filereadable($HOME . "/.vimmenu")
    source $HOME/.vimmenu
endif

