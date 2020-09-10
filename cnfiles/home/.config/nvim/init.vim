"-----------------------------------------"
"----- Configuración NeoVim por Ran# -----"
"-----------------------------------------"
"                       _
" _ __   ___  _____   _(_)_ __ ___
"| '_ \ / _ \/ _ \ \ / / | '_ ` _ \
"| | | |  __/ (_) \ V /| | | | | | |
"|_| |_|\___|\___/ \_/ |_|_| |_| |_|
"   
"
"-----------------------------------------"

" PLUGINS {{{
    call plug#begin('~/.local/share/nvim/plugged')
    Plug 'junegunn/goyo.vim'
    Plug 'scrooloose/nerdtree'
    Plug 'kovetskiy/sxhkd-vim' 
    call plug#end()
" }}}


" MAPEOS {{{
" tecla maestra para poder facer comandos de vim
    let mapleader =" "

" Mapeo das letras para comandos de vim
    map <leader>f :Goyo \| set linebreak<CR>
    map <leader>t :NERDTreeToggle<CR>

" autocompilar
    map <leader>c :w! <bar> !compiler <c-r>%<CR><CR>
    map <leader>p :!opout <c-r>%<CR><CR>

" autocommitear en git
    map <leader>gc :w! <bar> !gc <c-r>%<CR><CR>

" editar a metadata co meu script
    nnoremap <leader>me :w! <bar> !metadata -e <c-r>%<CR> <bar> :e <CR>

" copiar e pegar global
    vnoremap <C-c> "*y :let @+=@*<CR>
    map <C-v> "*P :let @+=@*<CR>

" abrir este ficheiro dende o calquer editor
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>sv :up <bar> :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" }}}


" UI {{{
" Para mostrar ambos o número de linha e número relativo
"    set number relativenumber
     set nu rnu 

" para que se mostre a linha do cursor
"    set cursorline

" para que sempre mostre a sintaxe
    syntax on

" esquema de cor por defecto
    ""colorscheme mysticaltutor
    colo pablo
" }}}


" para os tabuladores 
    set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab
    "autocmd Filetype css setlocal tabstop=4

" para que non saia o ficheiro .netrwhist
    let g:netrw_dirhistmax = 0

" para que cando abras un split vertical se poña á dereita e horizontal abaixo
    set splitbelow
    "set splitbelow splitright 


" CONSIDERACIONS FICHS {{{
" notas de calcurse lidas en markdown por defecto
    autocmd BufRead,BufNewFile /tmp/calcurse* set filetype=markdown
    autocmd BufRead,BufNewFile ~/.calcurse/notes/* set filetype=markdown

" autorestart
    autocmd BufWritePost *sxhkdrc !killall sxhkd; setsid sxhkd &
" }}}


" folding
"    set foldmethod=indent
"    set foldnestmax=10
"    set nofoldenable
"    set foldlevel=2
"
"syntax enable
"filetype plugin on
"set termguicolors
"hi Normal ctermbg=none
"hi Terminal ctermbg=none
"hi Terminal guibg=none
"hi Normal guibg=none
