" vundle setup

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

" plugins
Bundle 'bling/vim-airline'
Bundle 'bling/vim-bufferline'
Bundle 'daylerees/colour-schemes'
Bundle 'gmarik/Vundle.vim'
Bundle 'klen/python-mode'
Bundle 'scrooloose/nerdtree.git'
Bundle 'sickill/vim-monokai.git'
Bundle 'taglist.vim'
Bundle 'vim-scripts/xoria256.vim'
Bundle 'vim-scripts/mako.vim'

call vundle#end()

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
else
    colorscheme desert
endif
syntax enable

set autoindent

" folding
set nofoldenable
set foldmethod=syntax
set foldlevelstart=1

set cursorline
set guioptions=c

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
au! FileType python,c,rst match OverLength /\%79v.\+/


" plugins setup

" pydoc
let g:pydoc_cmd = '/usr/bin/pydoc'
let g:pydoc_open_cmd = 'vsplit'

let python_highlight_all = 1
let g:pymode_trim_whitespaces = 1
let g:pymode_options_colorcolumn = 0
let g:pymode_virtualenv_path = './.tox/py27'
let g:pymode_lint_checkers = ['pyflakes', 'pylint', 'pep8', 'mccabe', 'pep257']
let g:pymode_lint_ignore = "C0111,D100,D101,D102"
let g:pymode_rope_lookup_project = 1
let g:pymode_rope_regenerate_on_write = 0

" vim airline
let g:airline_powerline_fonts = 1

let vimpager_passthrough = 1 
