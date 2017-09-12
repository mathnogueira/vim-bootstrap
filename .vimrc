" Execute the local .vimrc in secure mode (overwrites global definitions)
set exrc
set secure

" Syntax
syntax on
set number

" Column limit
set colorcolumn=90
:match ErrorMsg '\%>90v.\+'

" Default tab size
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Pathogen startup
execute pathogen#infect()

" Colorscheme
colorscheme Atelier_SavannaDark

" NERD Tree startup
autocmd vimenter * NERDTree
autocmd VimEnter * wincmd p

let g:Powerline_symbols = 'fancy'

let g:indentLine_color_term = 236

nnoremap <C-J> :tabprevious<CR>
nnoremap <C-K> :tabnext<CR>
nnoremap <C-C> :tabclose<CR>
nnoremap <C-down> :m .+1<CR>
nnoremap <C-up> :m .-2<CR>

let g:nerdtree_tabs_open_on_console_startup=1

let NERDTreeMapOpenInTab='<ENTER>'
