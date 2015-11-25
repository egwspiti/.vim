set nocompatible
set nomodeline                    " Disable modelines.
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" some beautiful color schemes
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'cdmedia/itg_flat_vim'

Plugin 'majutsushi/tagbar'
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-endwise'
Plugin 'thoughtbot/vim-rspec'

Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
" all of your Plugins must be added before the following line
call vundle#end()                 " required

" itg_flat color scheme somehow adds extra ^^^ characters
" should investigate more
"  colo itg_flat                  " Use itg_flat color scheme.
colo wombat256mod                 " Use wombat256mod color scheme.
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

"Navigate splits with <ESC> / alt + h,j,k,l
"
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

"Scroll the screen instead of the cursor with cursor keys
nnoremap <UP> <C-e>j
nnoremap <DOWN> <C-y>k

"Emacs-like beginning and end of line at insert mode.
imap <C-e> <C-o>$
imap <C-a> <C-o>^

"CTRL Z to suspend vim at insert mode too.
inoremap <C-z> <ESC><C-z>i

"Shift + special movement key (<S-Left>, etc.) starts select mode
set selectmode=key
set keymodel=startsel

"Toggle pastemode with <F2>
set pastetoggle=<F2>

"Leader mapppings
"
"
"Space as Leader
let mapleader = "\<Space>"

"Clear highlighted search results with <Leader>/
nmap <silent> <Leader>/ :nohlsearch<CR>
"Linewise visual mode with <Leader><Leader>
nmap <Leader><Leader> V
"Close a buffer without destroying its window with <Leader>c
nnoremap <Leader>c :bp \| bd #<CR>

nnoremap <Leader>w :w<CR>
nnoremap <Leader>x :x<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>e :vsp<Space>

set lazyredraw                    " this might help with lag caused by relativenumber

if executable('ag')
	" Prefer ag over grep.
	set grepprg=ag\ --nogroup\ --nocolor\ --hidden
endif

" ctlp.vim config
"
let g:ctrlp_map = '<C-t>'
let g:ctrlp_cmd = 'CtrlP'
if executable('ag')
	" Use ag for listing files.
	let g:ctrlp_user_command='ag %s -l --nocolor --hidden -g ""'
endif

nnoremap <Leader>b :CtrlPBuffer<CR>

"tagbar
"
nnoremap <silent> <F9> :TagbarToggle<CR>
let g:tagbar_left=1               " open Tagbar window on the left-hand side of vim.
let g:tagbar_zoomwidth=1          " use the width of the longest visible tag.
let g:tagbar_autofocus=1          " Move cursor to Tagbar window.
let g:tagbar_show_linenumbers=0
let g:tagbar_iconchars=['▸', '▾']

" vim-rspec
"
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

" Airline
"
let g:airline_powerline_fonts = 1

augroup cul
	au!
	autocmd InsertEnter * set cul
	autocmd InsertLeave * set nocul
augroup END
