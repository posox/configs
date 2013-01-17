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

" ширина текста 
set textwidth=120

" минимальная высота окна пусть будет 0 (по умолчанию - 1)
set winminheight=0

" всегда делать активное окно максимального размера
set noequalalways
set winheight=9999

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
set paste

" цветовая схема
colorscheme koehler

" включить подсветку синтаксиса
syntax enable

" дополнение для c/c++
set nocp
filetype plugin on

" умные отступы
set autoindent
filetype plugin indent on

" фолдинг
set foldenable 
set foldmethod=syntax
set foldnestmax=1

" запрос н сохранение перед закрытием
set confirm

" pathogen
call pathogen#infect()

" подсвечивать строку
set cursorline

" убрать кнопки
set guioptions-=T

" clang complete
let g:clang_complete_copen=1
let g:clang_complete_debug=1
let g:clang_use_library=0
let g:clang_complete_auto=1
let g:clang_snippets=1
