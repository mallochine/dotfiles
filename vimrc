if exists('+colorcolumn')
  set colorcolumn=100
else
  au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>99v.\+', -1)
endif

set number
syntax enable
syntax on

set mouse=a

autocmd FileType go autocmd BufWritePre <buffer> Fmt

syntax on
set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans=1
set foldmethod=indent
set smarttab
set backspace=2 " more powerful backspacing

autocmd BufEnter *.proto colorscheme default
autocmd BufEnter *.template colorscheme default
set nocscopeverbose

set incsearch
set hlsearch

set csprg=gtags-cscope
cscope add /home/nutanix/main/stats

" Convenience keys to toggle between common modes.
" 1) paste vs nopaste.
" 2) Side-numbers vs no side numbers.
nnoremap f :set paste!<CR>
nnoremap ; :set nonumber!<CR>

nnoremap <leader>gg :execute 'Unite gtags/def:'.expand('<cword>')<CR>
nnoremap <leader>gc :execute 'Unite gtags/context'<CR>
nnoremap <leader>gr :execute 'Unite gtags/ref'<CR>
nnoremap <leader>ge :execute 'Unite gtags/grep'<CR>
vnoremap <leader>gg <ESC>:execute 'Unite gtags/def:'.GetVisualSelection()<CR>

"gtags once upon a time...
":map <C-]> :Gtags<CR><CR>
":map <C-\> :Gtags -r<CR><CR>
":map <F10> :cclose<CR>
":map <F11> :cp<CR>
":map <F12> :cn<CR>
"
"let GtagsCscope_Auto_Load = 1
"let GtagsCscope_Auto_Map = 1
"let GtagsCscope_Quiet = 1
"set cscopetag

set et ts=2 sts=2 sw=2
set foldenable
set foldmethod=indent
set cursorline
set cindent
set autoindent
au FileType python setl sw=2 sts=2 et
set ruler

au BufNewFile *.cc 0r ~/.vim/cc.skel
au BufNewFile *.h 0r ~/.vim/cc.skel
