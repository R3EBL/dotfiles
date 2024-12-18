
call plug#begin('~/.vim/plugged')
Plug 'blazkowolf/gruber-darker.nvim'
Plug 'catppuccin/vim', { 'as': 'catppuccin' }
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
call plug#end()


let g:lsp_signs_enabled = 1
set ignorecase
set ai
set hlsearch
noremap <silent> <leader><space> :nohlsearch<CR>
set bg=dark
let &t_ut=''
set laststatus=2

"let g:lightline={'colorscheme': 'gruvbox'}
let g:lightline = {'colorscheme': 'catppuccin_mocha'}

set numberwidth=4
"set colorcolumn=90
set nohidden 

inoremap kj <Esc>
inoremap jk <Esc>
set number
set tabstop=3
set shiftwidth=3
set noshowmatch
set mouse=a
set nobackup
set noswapfile
filetype indent on
set termguicolors
let g:gruvbox_contrast_dark='hard'
"colorscheme gruvbox
"colorscheme catppuccin_mocha
colorscheme gruber-darker


let NERDTreeWinSize = 20 " Set the width to 30 columns
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

vnoremap <C-c> "+y
map <C-p> "+p

"set omnifunc=ccomplete#Complete


" for AUTOCOMPLETE "

inoremap <silent><expr> <c-space> coc#refresh()

inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

nmap <silent> [g <Plug>(coc-diagnostic-prev) nmap <silent> ]g <Plug>(coc-diagnostic-next)

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

nmap <leader>f <Plug>(coc-format-selected)

nmap <leader>rn <Plug>(coc-rename)


"highlight Visual guibg=#ffffff guifg=#000000
highlight Visual guibg=#eeeeee guifg=#000000


"set signcolumn=yes
let b:coc_diagnostic_disable = 1

nnoremap <c-z> <nop>
inoremap <c-z> <nop>
vnoremap <c-z> <nop>

" use <tab> to trigger completion and navigate to the next complete item
function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()

" for the number highlight
highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
set cursorline

highlight Visual ctermfg=NONE ctermbg=darkgrey guifg=NONE guibg=#4b4b4b

