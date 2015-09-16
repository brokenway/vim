" VIM Configuration File
" Author: Geoffrey Golliher
"
 
" set UTF-8 encoding
set enc=utf-8
set fenc=utf-8
set termencoding=utf-8
" disable vi compatibility (emulation of old bugs)
set nocompatible
" use indentation of previous line
set autoindent
" use intelligent indentation for C
set smartindent
" configure tabwidth and insert spaces instead of tabs
set tabstop=4        " tab width is 4 spaces
set shiftwidth=4     " indent also with 4 spaces
set expandtab        " expand tabs to spaces
" wrap lines at 120 chars. 80 is somewaht antiquated with nowadays displays.
set textwidth=120
" turn syntax highlighting on
" set t_Co=256
syntax on
" highlight matching braces
set showmatch
" intelligent comments
set comments=sl:/*,mb:\ *,elx:\ */

filetype indent on
 
" Install OmniCppComplete like described on http://vim.wikia.com/wiki/C++_code_completion
" This offers intelligent C++ completion when typing ‘.’ ‘->’ or <C-o>
" Load standard tag files
set tags+=~/.vim/tags/cpp
set tags+=~/.vim/tags/gl
set tags+=~/.vim/tags/sdl
set tags+=~/.vim/tags/qt4
set tags+=~/.vim/tags/py
 
" Syntax color scheme
source ~/.vim/colors/tchaba2.vim

" Install DoxygenToolkit from http://www.vim.org/scripts/script.php?script_id=987
let g:DoxygenToolkit_authorName="Geoff Golliher <geoff.golliher@zefr.com>"
highlight OverLength ctermbg=red ctermfg=white guibg=#592929

" More than 80 character line length is wrong for these files
" The autocmd implementation of filenpattern is less that desireable.
autocmd BufNewFile,BufRead *.py match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.py set ts=8
autocmd BufNewFile,BufRead *.py set sw=4
autocmd BufNewFile,BufRead *.py set et
autocmd BufNewFile,BufRead *.py set sts=4
autocmd BufNewFile *.py 0r /Users/geoff.golliher/.vim/py_header.txt

autocmd BufNewFile,BufRead *.cpp match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.cpp set ts=4
autocmd BufNewFile,BufRead *.cpp set sw=2
autocmd BufNewFile,BufRead *.cpp set et
autocmd BufNewFile,BufRead *.cpp set sts=2

autocmd BufNewFile,BufRead *.c match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.c set ts=4
autocmd BufNewFile,BufRead *.c set sw=2
autocmd BufNewFile,BufRead *.c set et
autocmd BufNewFile,BufRead *.c set sts=2

autocmd BufNewFile,BufRead *.cc match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.cc set ts=4
autocmd BufNewFile,BufRead *.cc set sw=2
autocmd BufNewFile,BufRead *.cc set et
autocmd BufNewFile,BufRead *.cc set sts=2

autocmd BufNewFile,BufRead *.h match OverLength /\%81v.\+/
autocmd BufNewFile,BufRead *.h set ts=4
autocmd BufNewFile,BufRead *.h set sw=2
autocmd BufNewFile,BufRead *.h set et
autocmd BufNewFile,BufRead *.h set sts=2

" More than 120 character line length is wrong for these files
autocmd BufNewFile,BufRead *.java match OverLength /\%120v.\+/
autocmd BufNewFile,BufRead *.js match OverLength /\%120v.\+/

autocmd BufNewFile *.sh 0r /User/geoff.golliher/.vim/sh_header.txt
" match OverLength /\%81v.\+/
set ruler
