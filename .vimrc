set number
execute pathogen#infect()
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py map <F2> <ESC>ggi<CR><ESC>k:read !which python <CR>i#!<ESC>kdd
autocmd BufRead *.tex source ~/.vim/auctex.vim
filetype plugin on
set smartindent
"filetype plugin indent on
:set expandtab
:set background=dark
:colorscheme solarized
:set tabstop=4
