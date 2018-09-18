set nocompatible
set autoindent
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
set cindent
set laststatus=2
set hlsearch

syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

Plugin 'wakatime/vim-wakatime'
Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'itchyny/lightline.vim'
Plugin 'jacoborus/tender.vim'
Plugin 'w0rp/ale'

syntax enable
set background=dark
set termguicolors
colorscheme material-monokai

" let g:materialmonokai_subtle_spell=1
" let g:airline_theme='materialmonokai'

if (has("termguicolors"))
     set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme tender
" syntax enable
" colorscheme tender

" let g:lightline = { 'colorscheme': 'tender' }
let g:airline_theme='tender'
let macvim_skip_colorscheme=1

" Error and warning detect
"""""""""""""""""""""""""""
let g:ale_sign_column_always=1
" let g:ale_sign_error='>>'
" let g:ale_sign_warning='--'
let g:airline#extensions#ale#enabled = 1
highlight clear ALEErrorSign
highlight clear ALEWarningSign
