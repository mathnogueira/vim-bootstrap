"*****************************************
" Editor base configuration
"*****************************************

set nocompatible " use vim defaults
filetype plugin on

" Execute the local .vimrc in secure mode (overwrites global definitions)
set exrc
set secure


"" Directories for swp files
set nobackup
set noswapfile

" Default tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

"" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8
set bomb
set binary
set ttyfast

"" Fix backspace indent
set backspace=indent,eol,start

" Ignore
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,node_modules/*,bower_components/*

"****************************************
" Visual settings
"****************************************

" Syntax
syntax on
set ruler
set number

" Column limit
set colorcolumn=90
:match ErrorMsg '\%>90v.\+'

" Cursor
set scrolloff=5
set cursorline
set guicursor+=i:blinkwait10
set showmatch

set laststatus=2


"**************************************
" Key mappings
"**************************************

let mapleader='-'

" Tab navigation
"nnoremap <C-J> :tabprevious<CR>
"nnoremap <C-K> :tabnext<CR>
"nnoremap <C-C> :tabclose<CR>

" Line moving
nnoremap <C-down> :m .+1<CR>
nnoremap <C-up> :m .-2<CR>

"Split
noremap <Leader>h :<C-u>split<CR>
noremap <Leader>v :<C-u>vsplit<CR>

"" Tabs
nnoremap <Tab> gt
nnoremap <S-Tab> gT
nnoremap <silent> <S-t> :tabnew<CR>
nnoremap <silent> <S-w> :tabclose<CR>

"" Vmap for maintain Visual Mode after shifting > and <
vmap < <gv
vmap > >gv


"" Move visual block
vnoremap <C-down> :m '>+1<CR>gv=gv
vnoremap <C-up> :m '<-2<CR>gv=gv

"" Goto file
map <F12> :vertical wincmd gF<CR>



"***************************************
" Plugins configuration
"***************************************


" Pathogen startup
execute pathogen#infect()

" loading the plugin 
let g:webdevicons_enable = 0

" Colorscheme
colorscheme Atelier_SavannaDark

" Ctrl+P
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" NERD Tree startup
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

let NERDTreeMapOpenInTab='<ENTER>'
let g:NERDTreeChDirMode=2
let g:NERDTreeIgnore=['\.rbc$', '\~$', '\.pyc$', '\.db$', '\.sqlite$', '__pycache__']
let g:NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$', '\.bak$', '\~$']
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_console_startup=1
let g:NERDTreeWinSize = 30

"Indent line
let g:indentLine_color_term = 236
let g:indentLine_enabled = 1
let g:indentLine_concealcursor = 0
let g:indentLine_char = '┆'
let g:indentLine_faster = 1

" Airline
let g:airline_theme = 'jellybeans'
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tagbar#enabled = 1
let g:airline_skip_empty_sections = 1
let g:airline_powerline_fonts = 1

" Icons in the editor
let g:webdevicons_enable = 1
let g:webdevicons_enable_nerdtree = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1
let g:webdevicons_enable_ctrlp = 1
let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types\ 11
