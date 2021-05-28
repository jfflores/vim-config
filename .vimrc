set nocompatible
" Environment
set directory=$HOME/.vim,~/,/tmp
set backupdir=$HOME/.vim,~/,/tmp
set viminfo+=n$HOME/.vim/viminfo
set runtimepath=$HOME/.vim,$HOME/.vim/after,$VIM,$VIMRUNTIME
let $MYVIMRC="$HOME/.vim/.vimrc"

" Ter mais tempo para o syntax highlighting
set redrawtime=10000

" Disable swp file creation
set noswapfile

" For clever completion with the :find command
set path+=**
set wildmenu         " show basic menu with files

set tabstop=4 softtabstop=0 expandtab shiftwidth=4 "tabs as 4 spaces
set ruler            " show the cursor position all the time
set backspace=2      " Backspace deletes like most programs in insert mode
set showmode
set autoindent
set smartindent
set backspace=indent,eol,start
set complete-=i
set cursorline " highlight current line

" only show cursor line in active win/split
augroup CursorLine
    au!
    au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
    au WinLeave * setlocal nocursorline
augroup END

" Display relative line numbers, with absolute line number for current line
set number
set numberwidth=5
set relativenumber

" Make it obvious where 180 characters is
"set textwidth=180
set colorcolumn=+1

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/nerdtree'

" vim-surround: s is a text-object for delimiters; ss linewise
" ys to add surround
Plugin 'tpope/vim-surround'

" vim-commentary: gc is an operator to toggle comments; gcc linewise
Plugin 'tpope/vim-commentary'

" vim-repeat: make vim-commentary and vim-surround work with .
Plugin 'tpope/vim-repeat'

""""
" syntax highlighters
""""
Plugin 'sheerun/vim-polyglot'

Plugin 'frioux/vim-lost'

Plugin 'fmajutsushi/tagbar'

Plugin 'mattn/emmet-vim'

Plugin 'christoomey/vim-tmux-navigator'

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
set encoding=utf-8

" theme da barra de estados
let g:airline_theme='violet'
let g:airline_powerline_fonts = 1

" jsx syntax highlghting
let g:vim_jsx_pretty_colorful_config = 1

" forca que o active split tenha no min 110 de largura
set winwidth=110

" Remaps!

" http://vim.wikia.com/wiki/Quickly_adding_and_deleting_empty_lines
" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent>¯ :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent>„ :set paste<CR>m`O<Esc>``:set nopaste<CR>

" ctrl + e ctrl - fazem resize do buffer horizontal
" ctrl < e ctrl > fazem resize do buffer vertical
noremap <C-w>+ :resize +5<CR>
noremap <C-w>- :resize -5<CR>
noremap <C-w>< :vertical:resize -5<CR>
noremap <C-w>> :vertical:resize +5<CR>

":W tb escreve o file alem de :w
command! W :w

":Prettyjson identa json
command Prettyjson execute "%!python -m json.tool"

" split navigation sem precisar do ctrl w
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

nnoremap <F2> :%s/\s\+$//e<CR>
