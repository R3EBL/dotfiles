call plug#begin()
Plug 'catppuccin/nvim', { 'as': 'catppuccin' }
"Plug 'itchyny/lightline.vim'
Plug 'rose-pine/vim'
call plug#end()

inoremap kj <Esc>
inoremap jk <Esc>

"for status line
"set laststatus=2 
"set noshowmode
"let g:lightline = { 'colorscheme': 'rosepine' }
set scrolloff =4 
set sidescrolloff =8 "set timeoutlen=200
set ttimeoutlen=50
set ignorecase
set smartcase
set number 
set tabstop=3 
set shiftwidth=3
set noshowmatch
set mouse=a  
set nobackup 
set noswapfile
set hlsearch
noremap <silent> <leader><space> :nohlsearch<CR>


set updatetime=300
set ai
filetype indent on
set guioptions -=T
set guioptions -=m
vnoremap <C-c> "+y
map <C-p> "+p
set mouse=a
set notermguicolors
hi MatchParen cterm=underline ctermbg=none ctermfg=blue guifg=#5f87ff gui=underline
highlight LineNr ctermfg=2
let &t_SI = "\e[5 q"  " Beam in insert mode
let &t_SR = "\e[3 q"  " Underline in replace mode
let &t_EI = "\e[1 q"  " Block in normal mode
