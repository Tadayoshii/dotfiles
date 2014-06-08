set nocompatible
filetype off

set background=dark
set hidden
set tabstop=4
set autoindent
set copyindent
set number
set shiftwidth=4
set showmatch
set ignorecase
set smartcase
set smarttab
set hlsearch
set incsearch
set mouse=a
set relativenumber 
syntax on

set rtp+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'

Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'bling/vim-airline'
Bundle 'mbbill/undotree'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-surround'
Bundle 'scrooloose/nerdcommenter'
Bundle 'Shougo/neocomplcache'
Bundle 'scrooloose/syntastic'
Bundle 'spf13/vim-autoclose'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'chriskempson/base16-vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'tomasr/molokai'

filetype plugin indent on

let mapleader = "<"

"Fix for airline not showing up
set laststatus=2

nnoremap <Leader>l gt
nnoremap <Leader>h gT

nnoremap <Leader>j :bn<CR> 
nnoremap <Leader>k :bp<CR>

let g:airline_powerline_fonts=1
let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#left_sep = '»'
"let g:airline#extensions#tabline#left_alt_sep = '»'

"let g:neocomplcache_enable_at_startup = 1
"let g:neocomplcache_enable_smart_case = 1

""<TAB>: completion.
"inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

""Enable omni completion.
"autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
"autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
"autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
"autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
"autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

"" Enable heavy omni completion.
"if !exists('g:neocomplcache_omni_patterns')
"let g:neocomplcache_omni_patterns = {}
"endif
"let g:neocomplcache_omni_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
"let g:neocomplcache_omni_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
"let g:neocomplcache_omni_patterns.cpp = '[^.[:digit:]*\t]\%(\.\|->\)\|\h\w*::'

let g:ycm_path_to_python_interpreter = '/usr/bin/python'

set t_Co=256

set background=dark
