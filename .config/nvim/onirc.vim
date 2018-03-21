" ====================================================================
"  Load only if we are using Oni
" ====================================================================
if !(exists('g:gui_oni')) 
  finish
endif

" ====================================================================
" Defaults 
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
set runtimepath+=~/.local/share/dein/repos/github.com/Shougo/dein.vim/

if dein#load_state('/home/kevin/.oni/dein/')
  call dein#begin('/home/kevin/.oni/dein/')

  call dein#add('Shougo/dein.vim')
  call dein#add('tpope/vim-fugitive')
  call dein#add('scrooloose/nerdtree')
  call dein#add('scrooloose/nerdcommenter')
  call dein#add('tiagofumo/vim-nerdtree-syntax-highlight')
  call dein#add('majutsushi/tagbar')
  call dein#add('godlygeek/tabular')
  call dein#add('richq/vim-cmake-completion')
  call dein#add('octol/vim-cpp-enhanced-highlight')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-airline/vim-airline-themes')
  call dein#add('potatoesmaster/i3-vim-syntax')
  call dein#add('plasticboy/vim-markdown')
  call dein#add('suan/vim-instant-markdown')
  call dein#add('lervag/vimtex')
  call dein#add('alxhnr/latex_preview')
  call dein#add('othree/html5.vim')
  call dein#add('pangloss/vim-javascript')
  call dein#add('nono/jquery.vim')
  call dein#add('raimondi/delimitmate')
  call dein#add('mhinz/vim-startify')
  call dein#add('mhinz/vim-janah')
  call dein#add('ryanoasis/vim-devicons')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" ====================================================================
" Editor options
" ====================================================================
source ~/.config/nvim/editor.vim

" ====================================================================
"  Plugin options
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
