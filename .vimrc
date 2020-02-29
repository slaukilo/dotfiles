" _   _ ________  _________  _____
"| | | |_   _|  \/  || ___ \/  __ \
"| | | | | | | .  . || |_/ /| /  \/
"| | | | | | | |\/| ||    / | |
"\ \_/ /_| |_| |  | || |\ \ | \__/\
" \___/ \___/\_|  |_/\_| \_| \____/

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'

call plug#begin('~/.vim/plugged')
Plug 'sainnhe/edge'
Plug 'flrnprz/candid.vim'
Plug 'relastle/bluewery.vim'
Plug 'junegunn/seoul256.vim'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'sheerun/vim-polyglot'
Plug 'junegunn/fzf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'dracula/vim'
Plug 'flazz/vim-colorschemes'
Plug 'rainglow/vim'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'wadackel/vim-dogrun'
call plug#end()

" Colors
" important!!
set termguicolors


" for dark version
 set background=dark

" for light version
" set background=light

" the configuration options should be placed before `colorscheme edge`
let g:edge_style = 'neon'
let g:edge_disable_italic_comment = 1
let g:edge_popup_menu_selection_background = 'blue'
let g:edge_current_word = 'bold'

colorscheme dogrun

" lightline config
if !has('gui_running')
		set t_Co=256
endif		

let g:lightline = {
	\ 'colorscheme' : 'dogrun',
	\ 'active': {
	\	'left': [ [ 'mode', 'paste' ],
	\			  [ 'gitbranch', 'readonly', 'filename', 'modified'] ]
	\ },
	\ 'component_function': {
	\	'gitbranch': 'FugitiveHead'
	\ },
	\ }
	

" Syntax
syntax on
syntax enable

" Spaces & Tabs
set tabstop=4	" number of visual spaces per TAB
set softtabstop=4	" number of spaces in tab when editing
set laststatus=2

" UI config
set number	 " show line numbers
set showcmd	" show command in bottom bar
set cursorline	" highlight current line
filetype indent on	" load filetype-specific indent files
set wildmenu	" visual autocomplete for command menu
set showmatch	" highlight matching [{()}]

" Searching
set hlsearch	" highlight matches 


