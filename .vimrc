call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'morhetz/gruvbox'
call plug#end()

inoremap kj <Esc>
inoremap jk <Esc>
set number 
set tabstop=2 
set shiftwidth=2
set noshowmatch
set mouse=a  
set nobackup 
set noswapfile 
set hlsearch
noremap <silent> <leader><space> :nohlsearch<CR>

set ai
filetype indent on
set guioptions -=T
set guioptions -=m
vnoremap <C-c> "+y
map <C-p> "+p
set mouse=a
set guifont=Hack\ 14

colorscheme peachpuff 
highlight MatchParen ctermfg=black ctermbg=blue guibg=#003366
highlight Visual cterm=bold ctermbg=235 ctermfg=white guibg=#2e2e2e guifg=#d0d0d0
hi MatchParen cterm=none ctermbg=blue ctermfg=black

highlight Comment ctermfg=green

hi MatchParen cterm=none ctermbg=blue ctermfg=black

"let c_no_curly_error=1
let NERDTreeWinSize = 20 " Set the width to 30 columns
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>


function! CompileAndRun()
  let fileName = expand('%')
  if fileName =~ '\.cpp$'
    let exeName = substitute(fileName, '\.cpp$', '', '')
    " Prepare the command to compile and show errors in the new terminal
    let cmd = "alacritty -e bash -c 'g++ -std=c++11 -Wall -Wextra -Wpedantic -O2 -o " . exeName . " " . fileName . "; " .
          \ "if [ $? -eq 0 ]; then ./" . exeName . "; else echo \"\n--- Compilation failed ---\"; fi; read -p \"\n---exit---\"'"
    call system(cmd)
    redraw!
  else
    echo 'Not a C++ file'
  endif
endfunction
" Map keys to compile and run current file

map <F5> :call CompileAndRun()<CR>
map <F9> :w<CR>:!clear<CR>:call CompileAndRun()<CR>
