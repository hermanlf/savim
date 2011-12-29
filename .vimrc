filetype off
call pathogen#runtime_append_all_bundles()  " load up all plugins in bundle
call pathogen#helptags()                    " load helptags in bundle plugins 
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reload the .vimrc file immediately after writing to it
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set System Type (mac, linux or windows) & Vim Version
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! MySys()
    return "linux"
endfunc

func! VimVer()
    return "v:version"
endfunc


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define Platform & Vim Version Specific Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if VimVer() > 702
    set cursorcolumn=85
    set relativenumber
    set undofile
    set undodir=~/.vim/undo
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
set shell=/bin/bash
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The two lines below highlight current cursor pos in bright RED
" hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

syntax on
set t_Co=256                                " enable all 256 console term colors
colorscheme molokai                         " molokair or mustang

set gfn=Monospace\ 10
set visualbell
set cursorline
set cursorcolumn
set ttyfast
set ruler
set laststatus=2
set number
set scrolloff=3
set hidden
set wildmenu
set wildmode=list:longest


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent
set backspace=indent,eol,start

set formatoptions=qrn1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text Wrapping (disabled - code looks FUGLY when wrapped)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set wrap
"set textwidth=79


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable Arrow Keys In Favore Of [H] [J] [K] [L]
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

