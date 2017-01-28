""""""""""""""""""""""""""""""""
" General
""""""""""""""""""""""""""""""""

" This must be first, because it changes other options as a side effect.
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin on
filetype indent on

" Show line numbers
"set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" By default vim saves last 8 commands
set history=100

" Set to auto read when a file is changed from the outside
set autoread

" Encoding
set encoding=utf8

" Show current position
set ruler

" Unix as the standard file type
set ffs=unix,mac,dos

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Add a bit extra margin to the left
"set foldcolumn=1

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","


"""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases
set smartcase

" To use regular expression
set magic


"""""""""""""""""""""""""""""""""""
" Color
"""""""""""""""""""""""""""""""""""

try
    colorscheme=desert
catch
endtry

set background=dark


"""""""""""""""""""""""""""""""""""
" Files, backups and undo
"""""""""""""""""""""""""""""""""""

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb
set noswapfile


""""""""""""""""""""""""""""""""""""
" Text, tab and indent related
""""""""""""""""""""""""""""""""""""

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


""""""""""""""""""""""""""""""
" Status line
""""""""""""""""""""""""""""""

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l


""""""""""""""""""""""""""""
" key bindings
""""""""""""""""""""""""""""

" sudo write- useful for handling the permission-denied error
cmap <leader>sw :w !sudo tee % > /dev/null


