" ================================
" Welcome to Naz's vimrc file
" ================================

" --------------------------------
" Plugins
" --------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Plugins
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary' " gc to comment out
Plugin 'pangloss/vim-javascript'
Plugin 'ctrlpvim/ctrlp.vim'
let g:ctrlp_working_path_mode = 0 " make ctrlp work from current dir
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'luochen1990/rainbow'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-entire'
Plugin 'szw/vim-g'
Plugin 'jiangmiao/auto-pairs'
Plugin 'fatih/vim-go' " golang development 
Plugin 'jamesroutley/vim-logbook'
Plugin 'sheerun/vim-polyglot'   " syntax highlighting in most languages
Plugin 'joshdick/onedark.vim'   " Atom-style dark theme

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on

" --------------------------------
" Pretty things
" --------------------------------
syntax on
colorscheme onedark

" Set Airline bar theme
let g:airline_theme='bubblegum'

"rainbow Plugin Options (luochen1990/rainbow)
let g:rainbow_active = 1    " 0 if you want to enable it later via :RainbowToggle

" Colour at column 80
" set colorcolumn=80

" --------------------------------
" Basic stuff
" --------------------------------
set number          " Line numbers

" Tab size
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

"Cursor
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif
