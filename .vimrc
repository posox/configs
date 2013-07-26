" vundle
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" plugins
Bundle 'gmarik/vundle'
Bundle 'scrooloose/nerdtree.git'
Bundle 'hdima/python-syntax.git'
"Bundle 'fholgado/minibufexpl.vim.git'
Bundle 'taglist.vim'
Bundle 'sickill/vim-monokai.git'
Bundle 'bling/vim-bufferline'
Bundle 'bling/vim-airline'

filetype plugin indent on 

" установить keymap, чтобы по Ctrl+^ переключался на русский и обратно
set keymap=russian-jcukenwin 

" по умолчанию - латинская раскладка
set iminsert=0

" по умолчанию - латинская раскладка при поиске
set imsearch=0

" игнорировать регистр при поиске
set ic

" подсвечивать поиск
set hls

" использовать инкрементальный поиск
set is

" настраиваю для работы с русскими словами (чтобы w, b, * понимали
" русские слова)
set iskeyword=@,48-57,_,192-255

" задать размер табуляции в четыре пробела
set ts=4
set expandtab
set shiftwidth=4
set softtabstop=4

" отображение выполняемой команды
set showcmd 

" перенос по словам, а не по буквам
set linebreak
set dy=lastline

" включить нумерацию строк
set nu

" вставка с фрматированием
" set paste

" цветовая схема
colorscheme xoria256

" включить подсветку синтаксиса
syntax enable

" умные отступы
set autoindent

" фолдинг
set nofoldenable
set foldmethod=syntax

" подсвечивать строку
set cursorline

" убрать кнопки
set guioptions=c

" совместимость с vi
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
highlight OverLength ctermbg=blue ctermfg=white guibg=blue
match OverLength /\%81v.\+/


" plugins setup

" pydoc
let g:pydoc_cmd = '/usr/bin/pydoc'
let g:pydoc_open_cmd = 'vsplit'

" python highlight
let python_highlight_all = 1

" miniBufExpl
let g:miniBufExplMaxSize = 1

