"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" SOME IMPORTANT NOTES:                                                       
" spf13 @ http://vim.spf13.com/ provides The Ultimate Vim Distribution        
" tomasr @ https://github.com/tomasr/molokai Keeps the molokai them updated   
" amix @ http://amix.dk/ Original source of inspiration for awesome vim       
" Ralp Levien @ http://www.google.com/webfonts/specimen/Inconsolata font      
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible                            " must be first line
filetype off
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set System Type (mac, linux or windows) ,Vim Version, Color Scheme and paths
" Available Themes: molokai, peaksea, mustang, jellybeans, zenburn
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
func! VimVer()
    return "v:version"
endfunc

func! MyTheme()
    return "molokai"
endfunc

if has('win32') || has('win64')
    set runtimepath=$HOME/.vim,$VIM/vimfiles,$VIMRUNTIME,$VIM/vimfiles/after,$HOME/.vim/after
    set gfn=Consolas:h10
elseif has('unix')
    set gfn=Monospace\ 10
    set shell=/bin/bash
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Call pathogen to load up all plugins in bundle. This location is important. 
" Pathogen needs to be loaded after setting runtimepath to ensure correct     
" behaviour on windows.
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call pathogen#infect()
call pathogen#helptags()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Reload the .vimrc file immediately after writing to it
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Define Platform & Vim Version Specific Options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if VimVer() > 702
    set cursorcolumn=85
    set relativenumber
    set undofile
    set undodir=~/.vim/.vimundo//
    set backupdir=~/.vim/.vimbackup//
    set directory=~/.vim/.vimswap//
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set encoding=utf-8


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" User Interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" The two lines below highlight current cursor pos in bright RED
" hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
" hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white

syntax on
set t_Co=256                                " enable all 256 console term colors

if MyTheme() == "molokai"
    colorscheme molokai
elseif MyTheme() == "peaksea"
    set background=dark
    colorscheme peaksea
elseif MyTheme() == "mustang"
    colorscheme mustang
elseif MyTheme() == "jellybeans"
    colorscheme jellybeans
elseif MyTheme() == "zenburn"
    let g:zenburn_high_Contrast=1
    colorscheme zenburn
endif

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

