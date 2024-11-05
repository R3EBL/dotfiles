call plug#begin()
	Plug 'Rigellute/rigel'
	Plug 'preservim/nerdtree'
	Plug 'junegunn/seoul256.vim'
	Plug 'morhetz/gruvbox'
call plug#end()
"line under current lineshit
"set cursorline
"set culopt=line
set autoindent
set guifont=Cascadia\ Code\ 17
"defult curosr color : #F4F4F4 and #ABABAB
"koehler <<-- the best colorscheme 
colorscheme peachpuff 
"if !has("gui_runnint")
"	set termguicolors			
"endif

highlight Visual guifg=#004000  guibg=White  " Dark green in gVim
highlight Visual ctermfg=22 ctermbg=White " Dark green in terminal Vim

inoremap jk <Esc>
inoremap kj <Esc>
inoremap jj <Esc>
inoremap kk <Esc>
set guioptions -=m
set guioptions -=T
filetype indent on 
vnoremap <C-c> "+y
map <C-p> "+p
highlight Comment ctermfg=green
set number
set tabstop=4
set shiftwidth=4
set noswapfile
set noshowmatch
set mouse=a
set nobackup
"let &t_SI = "\e[6 q"
"let &t_EI = "\e[2 q"
"let &t_SR = "\e[4 q"


if has("gui_running")
" Cursor color settings
    highlight Cursor guifg=#000000 guibg=#FFFF00
    highlight iCursor guifg=#000000 guibg=#FFFF00
    let &t_SI = "\<Esc>]12;#FFFF00\a"
    let &t_SR = "\<Esc>]12;#FFFF00\a"
    let &t_EI = "\<Esc>]12;#FFFF00\a"

" Set block cursor for all modes
    set guicursor=n-v-c:block-Cursor
    set guicursor+=i:block-Cursor
endif

"nerdtree stuff
let NERDTreeWinSize = 30 " Set the width to 30 columns
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

