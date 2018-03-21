" ====================================================================
" Get defaults that most users want.
" ====================================================================
source /usr/share/vim/vim80/defaults.vim 

" ====================================================================
"  Change mapleader
" ====================================================================
let g:mapleader = ","

" ====================================================================
"  Dein settings
" ====================================================================
set nocompatible

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme', {'merged': 0}
Plug 'junegunn/goyo.vim'
Plug 'tpope/vim-vinegar'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'
Plug 'godlygeek/tabular'
Plug 'richq/vim-cmake-completion'
Plug 'octol/vim-cpp-enhanced-highlight'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'potatoesmaster/i3-vim-syntax'
Plug 'plasticboy/vim-markdown'
Plug 'suan/vim-instant-markdown'
Plug 'lervag/vimtex'
Plug 'alxhnr/latex_preview'
Plug 'othree/html5.vim'
Plug 'pangloss/vim-javascript'
Plug 'nono/jquery.vim'
Plug 'raimondi/delimitmate'
Plug 'mhinz/vim-startify'
Plug 'chriskempson/base16-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'airblade/vim-rooter'
Plug 'jelera/vim-javascript-syntax'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/csscomplete.vim'
Plug 'etdev/vim-hexcolor'
Plug 'airblade/vim-gitgutter'
Plug 'ryanoasis/vim-devicons'
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'schickele/vim'
Plug 'nightsense/shoji'
Plug 'wolverian/minimal'
Plug 'endel/vim-github-colorscheme'

call plug#end()

filetype plugin indent on
syntax enable

" ====================================================================
" Full coloring background fix in some terminals
" ====================================================================
set t_ut=" "
set encoding=utf8

" ====================================================================
"  Editor options
" ====================================================================
source ~/.config/nvim/editor.vim

" ====================================================================
"	 Plugin options
" ====================================================================
source ~/.config/nvim/plugins.vim

" ====================================================================
"  Functions
" ====================================================================
source ~/.config/nvim/functions.vim

" ====================================================================
"  Call functions
" ====================================================================
nnoremap <F5> :call NumberToggle()<CR>
nnoremap <F6> :call CursorLineToggle()<CR>

" ====================================================================
" Sudo inside Vim
" ====================================================================
command! SaveSudo :execute ':silent w !sudo tee % > /dev/null' | :edit!
