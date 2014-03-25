" vundle setup
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugins
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'daylerees/colour-schemes'
Bundle 'gmarik/vundle'
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdtree.git'
Bundle 'sickill/vim-monokai.git'
Bundle 'taglist.vim'

filetype plugin indent on 

" find
set ic
set hls
set is

" tabs
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4

set showcmd 
set linebreak
set dy=lastline
set nu
set nopaste

" colors
if $TERM =~ "256"
    set t_Co=256
    colorscheme xoria256
endif
syntax enable

set autoindent

" folding
set nofoldenable
set foldmethod=syntax
set foldlevelstart=1

set cursorline
set guioptions=c
set nocompatible

" swp
set backupdir=~/.vim/backup/
set directory=~/.vim/backup/

" buffers
map <C-Tab> :bnext<cr>
map <C-S-Tab> :bprevious<cr>
imap <C-Tab> :bnext<cr>
imap <C-S-Tab> :bprevious<cr>

" colorcolumn
highlight OverLength ctermbg=red ctermfg=white guibg=red
au! FileType python,c match OverLength /\%80v.\+/


" plugins setup

" pydoc
let g:pydoc_cmd = '/usr/bin/pydoc'
let g:pydoc_open_cmd = 'vsplit'

" python highlight
let python_highlight_all = 1

" vim airline
let g:airline_powerline_fonts = 1

let vimpager_passthrough = 1 
