set nocompatible
" Environment
set directory=$HOME/.vim,~/,/tmp
set backupdir=$HOME/.vim,~/,/tmp
set viminfo+=n$HOME/.vim/viminfo
set runtimepath=$HOME/.vim,$HOME/.vim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$HOME/.vim/.vimrc"

" Disable swp file creation
set noswapfile

" For clever completion with the :find command
set path+=**
set wildmenu         " show basic menu with files

set tabstop=4      " reduce tab size to 2 spaces
set shiftwidth=4
set ruler            " show the cursor position all the time
set backspace=2      " Backspace deletes like most programs in insert mode
set showmode
set autoindent
set smartindent
set backspace=indent,eol,start
set complete-=i
set smarttab

" Display relative line numbers, with absolute line number for current line
set number
set numberwidth=5
set relativenumber

" Make it obvious where 180 characters is
set textwidth=180
set colorcolumn=+1

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'mustache/vim-mustache-handlebars'

" vim-surround: s is a text-object for delimiters; ss linewise
" ys to add surround
Plugin 'tpope/vim-surround'

" vim-commentary: gc is an operator to toggle comments; gcc linewise
Plugin 'tpope/vim-commentary'

" vim-repeat: make vim-commentary and vim-surround work with .
Plugin 'tpope/vim-repeat'

Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript' 
" Plugin 'StanAngeloff/php.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required

" Tag Jumping
" create the 'tags' file
command! MakeTags !ctags -R .

syntax enable
set background=dark
colorscheme gruvbox 
filetype plugin indent on    " required
set showcmd ruler laststatus=2
" search as you type
set incsearch
set ignorecase smartcase
" set listchars=trail:.,tab:>-,extends:>,precedes:<,nbsp:¬
" set list

