set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'scrooloose/syntastic'
Plugin 'altercation/vim-colors-solarized'
Plugin 'sukima/xmledit'
Plugin 'wookiehangover/jshint.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Put your non-Plugin stuff after this line

" Syntax highlighting
syntax enable

"relative line numbers
:set relativenumber

"tabs http://stackoverflow.com/questions/1878974/redefine-tab-as-4-spaces
set tabstop=4
set softtabstop=0 noexpandtab
set shiftwidth=4

"ignore some files for ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.yardoc\|public$|log\|tmp\|target$',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$'
  \ }
if executable('ag')
	set grepprg=ag\ --nogroup\ --nocolor
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

"set local leader to avoid xmledit and easymotion conflict
let maplocalleader = ","

"disable autocommenting
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

"treat .flowfrag as xml
autocmd BufEnter *.flowfrag :setlocal filetype=xml

