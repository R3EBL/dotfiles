
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()

"set cursorline
"set culopt=line

let g:lsp_signs_enabled = 1
set ignorecase
set ai
set hlsearch
noremap <silent> <leader><space> :nohlsearch<CR>
set bg=dark
let &t_ut=''
set laststatus=2
let g:lightline={
	\ 'colorscheme': 'gruvbox',
	\ }

set signcolumn=yes
set colorcolumn=80
set nohidden 

inoremap kj <Esc>
inoremap jk <Esc>
set number
set tabstop=3
set shiftwidth=3
set noshowmatch
set mouse=a
set nobackup
filetype indent on
set termguicolors
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox
"highlight Visual ctermfg=8 ctermbg=White 

let NERDTreeWinSize = 20 " Set the width to 30 columns
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

vnoremap <C-c> "+y
map <C-p> "+p

set omnifunc=ccomplete#Complete


" for AUTOCOMPLETE "

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>f <Plug>(coc-format-selected)

nmap <leader>rn <Plug>(coc-rename)
