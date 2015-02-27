set number
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
autocmd BufRead *.py map <F2> <ESC>ggi<CR><ESC>k:read !which python <CR>i#!<ESC>kdd
autocmd BufRead *.tex source ~/.vim/auctex.vim
filetype plugin on
colorscheme darkblue
set smartindent
"filetype plugin indent on
let base16colorspace=256  " Access colors present in 256 colorspace
set background=dark
