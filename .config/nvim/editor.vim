" ====================================================================
"  Editor options
" ====================================================================

" ====================================================================
" Colorschemes
" ====================================================================
set termguicolors
set background=dark
colorscheme github

hi Normal guibg=none ctermbg=none
hi EndOfBuffer guifg=#1f1f1f 

" ====================================================================
"  Options
" ====================================================================
set noswapfile                 " Don't create swap files
set autoread                   " Read files that changes externally
set number                     " Enable numberlines
set relativenumber             " Enable relative numbers
set nolinebreak                " Don't break lines at word
set nowrap                     " Don't wrap lines
"set linebreak                 " Break lines at word
"set wrap                      " Wrap lines
set showmatch                  " Highligth matching brace
set visualbell                 " No beeping
set hlsearch                   " Highligth all search results
set smartcase                  " Enable smartcase search
set ignorecase                 " Always case insensitive
set incsearch                  " Searches for string incrementally
set autoindent                 " Autoident lines
set cindent                    " C-Like ident ( C/C++ fan here!!)
set tabstop=2                  " 2 columns per tab
set shiftwidth=2               " Number of autoident spaces [> and < (un)ident 2 spaces]
set softtabstop=2              " Tab inserts 2 spaces
set smartindent                " Smart indent
set smarttab                   " Smart tabs
set expandtab                  " Use spaces when using tabs
set ruler                      " Show row and column ruler information
set undolevels=1000            " Number of undos
set backspace=indent,eol,start " Backspace for dummys
set pastetoggle=<F12>          " Paste toogle (sane indentation on pastes)
set nocursorline               " No highligth line where the cursor is
set nocursorcolumn             " No highligth column where the cursor is
set fillchars=vert:\│          " Change character '|' to '│' used in vsplit
set textwidth=90               " Max textwidth
set cursorline                 " Highlight line row

" ====================================================================
" Keybindings
" ====================================================================
nnoremap <C-k> <C-W><C-K>
nnoremap <C-j> <C-W><C-J>
nnoremap <C-l> <C-W><C-L>
nnoremap <C-h> <C-W><C-H>

tnoremap <Esc> <C-\><C-N>

" ====================================================================
"  Netrw
" ====================================================================
let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'
