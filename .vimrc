set nocompatible
set autoindent
set tabstop=2
set expandtab
set shiftwidth=2
set smartindent
set cindent
set laststatus=2
set hlsearch
set number

syntax on
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
call vundle#end()
filetype plugin indent on

Plugin 'wakatime/vim-wakatime'
"Plugin 'drewtempelmeyer/palenight.vim'
Plugin 'itchyny/lightline.vim'
"Plugin 'jacoborus/tender.vim'
"Plugin 'w0rp/ale'
Plugin 'scrooloose/nerdtree'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'airblade/vim-gitgutter'
Plugin 'arcticicestudio/nord-vim'

" If you have vim >=8.0 or Neovim >= 0.1.5
"if (has("termguicolors"))
" set termguicolors
"endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax enable
colorscheme nord


" Error and warning detect
"""""""""""""""""""""""""""
"let g:ale_sign_column_always=1
"let g:ale_sign_error='>>'
"let g:ale_sign_warning='--'
"let g:airline#extensions#ale#enabled = 1
"highlight clear ALEErrorSign
"highlight clear ALEWarningSign


" Plugin nertdtree
""""""""""""""""""

"autocmd VimEnter * NERDTree
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
"autocmd BufEnter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"autocmd VimEnter * wincmd l
"autocmd BufNew   * wincmd l

map <C-n> :NERDTreeToggle<CR>

let g:NERDTreeWinSize=40
let NERDTreeQuitOnOpen = 1
let NERDTreeDirArrows=0
let NERDTreeDirArrowExpandable='+'
let NERDTreeDirArrowCollapsible='-'

" Plugin syntastic
""""""""""""""""""

"set statusline+=%#warningmsg#
"set statusline+=%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0
"let g:syntastic_aggregate_errors = 1


" Plugin vim-gitgutter
""""""""""""""""""""""



" Theme nord
"""""""""""""

"let g:nord_italic = 1
"let g:nord_italic_comments = 1
let g:nord_uniform_status_lines = 1
let g:nord_comment_brightness = 12
let g:nord_cursor_line_number_background = 1

highlight Search     ctermfg=Black      ctermbg=Red     cterm=NONE
