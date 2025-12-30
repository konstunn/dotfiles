
" FIXME smartindent does not work
" for K&R style indented shell scripts

" be iMproved, required by Vundle
set nocompatible

" required by Vundle
filetype off

"set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim

"call vundle#begin()

"let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'

"Plugin 'airblade/vim-gitgutter'

"Plugin 'tpope/vim-fugitive'

"Plugin 'python-mode/python-mode'

"Plugin 'hdima/python-syntax'
"Plugin 'JuliaEditorSupport/julia-vim'

" Tab-complete python code
"Plugin 'vim-scripts/Pydiction'

" jedi code autocompletion library for python
"Plugin 'davidhalter/jedi-vim'

" low-contrast color scheme for Vim
"Plugin 'jnurmine/Zenburn'

"Plugin 'altercation/vim-colors-solarized'

" syntax checking hacks for vim
" Plugin 'vim-syntastic/syntastic'

"
"Plugin 'jalvesaq/Nvim-R'

"Plugin 'tmhedberg/SimpylFold'

"
"Plugin 'Valloric/YouCompleteMe'

"
"Plugin 'lervag/vimtex'

"
"Plugin 'vim-latex/vim-latex'
"
"Plugin 'coyotebush/vim-pweave'

"Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
" call vundle#end()            " required
filetype plugin indent on    " required

"
" let R_pdfviewer = "evince"

"
" let g:SimpylFold_docstring_preview=1

syntax on

" Indents, tabs
set tabstop=4
set shiftwidth=4
"set softtabstop=4
set smarttab
set autoindent
set smartindent
set cindent
set foldmethod=indent
set autowrite		" Automati"cally save before commands like :next and :make

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$")  | exe "normal! g'\"" | endif
"endif

"
"set exrc

"
"set secure

" Search
set hlsearch
set incsearch

" Line numbers
set number

"
set laststatus=2

" Show matching parentheses
set showmatch
set matchtime=3

"
"colorscheme evening

" Highlight
highlight LineNr term=bold cterm=NONE ctermfg=DarkGrey ctermbg=NONE
highlight Comment ctermfg=LightBlue
highlight Folded cterm=italic ctermfg=Grey ctermbg=Blue
" highlight Visual ctermfg=LightBlue

" Save folds views
autocmd BufWinLeave *.* mkview
autocmd BufWinEnter *.* silent loadview

" Disable arrow keys
map <up>	<NOP>
map <down>	<NOP>
map <left>	<NOP>
map <right> <NOP>

" Reset search highlight on Ctrl+C
map <C-c>	<Esc>:noh<CR>

" Autocomplete matching curly brace
"inoremap {<CR> {<CR>}<Esc>ko

"inoremap ( ()<Esc>i

" q: sucks
nmap q: :q

" Force usual backspace behaviour
set backspace=indent,eol,start

" Show line and column number of the cursor position
set ruler

" type russian with ease
"set keymap=russian-jcukenwin
set iminsert=0
set imsearch=0

" I accidentally press W instead of w when I want to save
command W w

" I accidentally prees Q instead of q when I want to quit
command Q q
