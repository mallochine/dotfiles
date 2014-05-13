" This includes the bashrc distributed by 98-172
" Great Practical Ideas for Computer Scientists
source ~/.vimrc_gpi

" Add your own changes below...
set et ts=2 sts=2 sw=2

if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>100v.\+', -1)
endif

set number
syntax enable
syntax on

set mouse=a

autocmd FileType go autocmd BufWritePre <buffer> Fmt

filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set foldmethod=indent
