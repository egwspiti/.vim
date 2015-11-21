set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

set number
set numberwidth=4

syntax on
filetype indent plugin on

runtime macros/matchit.vim

set showcmd                       " Display incomplete commands.
set showmode                      " Display the mode we are in.
set backspace=indent,eol,start    " Intuitive backspacing.
set hidden                        " Handle multiple buffers better.
set wildmenu                      " Enhanced command line completion.
set wildmode=list:longest         " Complete files like a shell.
set ignorecase                    " Case-insensitive searching.
set smartcase                     " But case-sensitive if expression contains a capital letter.
set noruler                       " Don't show cursor position.
set wrap                          " Turn on line wrapping.
set scrolloff=3                   " Show 3 lines of context around the cursor.
set title                         " Set window title for this terminal.
set novisualbell                  " No beeping.
set nobackup                      " Don't make a backup before overwriting a file.
set nowritebackup                 " And again.
set laststatus=2                  " Always show a status line.
set encoding=utf-8                " Use utf-8 encoding.
