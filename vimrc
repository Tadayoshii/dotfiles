set nocompatible
filetype off

if has("win32") || has("win16")
	set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
	call vundle#begin('$USERPROFILE/vimfiles/bundle/')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

if &term =~ "xterm"
	 "256 colors
	let &t_Co = 256
	 "restore screen after quitting
	let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
	let &t_te = "\<Esc>[?47l\<Esc>8"
	if has("terminfo")
		let &t_Sf = "\<Esc>[3%p1%dm"
		let &t_Sb = "\<Esc>[4%p1%dm"
	else
		let &t_Sf = "\<Esc>[3%dm"
		let &t_Sb = "\<Esc>[4%dm"
	endif
endif

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
"Plugin 'bling/vim-airline'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Shougo/neocomplcache'
Plugin 'scrooloose/syntastic'
Plugin 'spf13/vim-autoclose'
"Plugin 'godlygeek/tabular'
Plugin 'majutsushi/tagbar'
Plugin 'chriskempson/base16-vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
"Plugin 'ervandew/supertab'
"Plugin 'SirVer/ultisnips'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'honza/vim-snippets'
Plugin 'moll/vim-node'
Plugin 'jamescarr/snipmate-nodejs'
Plugin 'ahayman/vim-nodejs-complete'
Plugin 'kien/ctrlp.vim'
Plugin 'morhetz/gruvbox'
Plugin 'peterhoeg/vim-qml'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'jacoborus/tender.vim'
Plugin 'itchyny/lightline.vim'
call vundle#end()
filetype plugin indent on

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

set nowrap
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

if has('gui_running')
	set guioptions-=m  "remove menu bar
	set guioptions-=T  "remove toolbar
	set guioptions-=r  "remove right-hand scroll bar
	set guioptions-=L  "remove left-hand scroll bar
	set background=light
	if has("gui_gtk2")
		set guifont=Mensch\ 11
	elseif has("gui_win32")
		"set guifont=Mensch:h10:cANSI
		set guifont=Iosevka:h12

	endif
else
    set background=dark
endif

let mapleader = "<"

"Fix for airline not showing up
set laststatus=2
set ttimeoutlen=50

nnoremap <Leader>l gt
nnoremap <Leader>h gT

nnoremap <Leader>j :bn<CR> 
nnoremap <Leader>k :bp<CR>

nnoremap <silent><Leader>d <C-]>

nnoremap <C-j> }
nnoremap <C-k> {
nnoremap <space> zz

vnoremap <C-j> }
vnoremap <C-k> {

nnoremap <F5> :make<CR>
nnoremap <F9> :cp<CR>
nnoremap <F10> :cn<CR>
nnoremap f<tab> za
nnoremap f<C-j> <C-v>}kzf

function! DefInSecondWindow()
	let wordUnderCursor = expand("<cword>")
	exe ":norm! \<C-w>w"
	try
		exec("tag ".wordUnderCursor)
	catch
		exe ":norm! \<C-w>w"
	endtry
	"exec("try\n tag ".wordUnderCursor."\ncatch\nendtry")
endfunction

nnoremap <silent><leader>s :call DefInSecondWindow()<CR>

"let g:airline_powerline_fonts=0
"let g:airline#extensions#tabline#enabled=1
"let g:airline#extensions#tabline#left_sep = '»'
"let g:airline#extensions#tabline#left_alt_sep = '»'

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

set t_Co=256
set background=dark

"let g:airline_theme='tender'
let g:lightline = {
			\ 'colorscheme': 'seoul256',
			\ 'component': {
			\   'readonly': '%{&readonly?"⭤":""}',
			\ },
			\ 'separator': { 'left': '', 'right': '' },
			\ 'subseparator': { 'left': '', 'right': '' }
			\ }
"colorscheme gruvbox 
"let base16colorspace=256  " Access colors present in 256 colorspace
""colorscheme base16-ashes 
set backspace=indent,eol,start



"let SuperTabDefaultCompletionType = '<C-Tab>'
"let g:UltiSnipsExpandTrigger="<c-s>"
"let g:UltiSnipsJumpForwardTrigger="<c-s>"
"let g:UltiSnipsJumpBackwardTrigger="<s-s>"
"
set lines=1000
set columns=1000
let g:autoclose_on = 0
nmap <c-f> :CtrlPTag<cr>

hi CursorLineNr ctermbg=black ctermfg=blue
"hi Search ctermfg=black ctermbg=green
hi LineNr ctermfg=white ctermbg=black 
hi Pmenu ctermbg=yellow ctermfg=black
hi PmenuSel ctermbg=white ctermfg=black

set encoding=utf-8

