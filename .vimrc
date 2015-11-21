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
set incsearch                     " Incremental search.
set hlsearch                      " And highlight matches.
set autowrite                     " Write a modified buffer on ctrl-z, :next, ...
set splitright                    " On :vsplit, put new window to the right.

"Map CTRL P/N to cycle through buffers.
noremap <silent> <C-p> :bp<CR>
noremap <silent> <C-n> :bn<CR>

"Usually, most terms sends <ESC> when Alt is pressed.
"
"
"Navigate splits with <ESC> / alt + h,j,k,l
noremap <silent> <ESC>h <C-w>h
noremap <silent> <ESC>l <C-w>l
noremap <silent> <ESC>j <C-w>j
noremap <silent> <ESC>k <C-w>k
"insert mode, too.
"
" Should investigate <ESC> timing more before enabling this.
"
" inoremap <ESC>h <ESC><C-w>hi
" inoremap <ESC>l <ESC><C-w>li
" inoremap <ESC>j <ESC><C-w>ji
" inoremap <ESC>k <ESC><C-w>ki
inoremap <ESC>h <ESC><C-w>h
inoremap <ESC>l <ESC><C-w>l
inoremap <ESC>j <ESC><C-w>j
inoremap <ESC>k <ESC><C-w>k

"Create and close splits with <ESC> / alt + c,s,v
"
" c  closes current split
" s  creates a new horizontal split
" v  creates a new vertical split
noremap <silent> <ESC>c <C-w>c
noremap <silent> <ESC>s <C-w>s
noremap <silent> <ESC>v <C-w>v

"Select all with <ESC> / alt + a
noremap <silent> <ESC>a ggVG

"Emacs-like beginning and end of line at insert mode.
imap <C-e> <C-o>$
imap <C-a> <C-o>^

"Shift + special movement key (<S-Left>, etc.) starts select mode
set selectmode=key
set keymodel=startsel
