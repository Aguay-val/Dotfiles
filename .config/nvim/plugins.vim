" ====================================================================
" Plugin options
" ====================================================================

" ====================================================================
"  Tex
" ====================================================================
let g:tex_flavor = "latex"

" ====================================================================
"  Latex Preview
" ====================================================================
let g:latex_preview#rebuild_events  = 'TextChanged,TextChangedI'
let g:latex_preview#document_viewer = 'zathura'

nnoremap <F4> :LatexPreviewRebuild<CR>

" ====================================================================
"  Airline 
" ====================================================================
set laststatus=0
let g:airline_powerline_fonts = 0
let g:airline_theme = 'lucius'
let g:airline_exclude_preview = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 0
let g:airline#extensions#tabline#show_splits = 0
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#show_tab_nr = 0
let g:airline#extensions#tabline#show_tab_type = 0
let g:airline#extensions#tabline#show_close_button = 0
let g:airline#extensions#whitespace#enabled = 0

" ====================================================================
" YouCompleteMe
" ====================================================================
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py' 
let g:ycm_register_as_syntastic_checker = 1
let g:ycm_show_diagnostics_ui = 1
let g:ycm_enable_diagnostic_signs = 1
let g:ycm_error_symbol = '⮿ '
let g:ycm_warning_symbol = '? '
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_open_loclist_on_ycm_diags = 1
let g:ycm_collect_identifiers_from_tags_files = 0
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion = ['<TAB>', '<Down>']
let g:ycm_key_list_stop_completions = ['<Enter>']
let g:ycm_key_detailed_diagnostics = '<leader>d'
let g:ycm_server_use_vim_stdout = 0
let g:ycm_server_log_level = 'info'
let g:ycm_confirm_extra_conf = 0
let g:ycm_goto_buffer_command = 'same-buffer'
let g:ycm_key_invoke_completion = '<C-Space>'

nnoremap <F11> :YcmForceCompileAndDiagnostics <CR>

" Tricky hack to close popup menu in completions with <CR>
imap <expr> <CR> pumvisible() ? "\<c-y>" : "<Plug>delimitMateCR"

" ====================================================================
" NERD Tree
" ====================================================================
" Use the following to open NERDTree automatically
"autocmd StdinReadPre * let s:std_in = 1
"autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let g:NERDTreeChDirMode = 2
let g:NERDTreeMinimalUI = 1
let g:NERDTreeShowBookmarks = 1

"let g:NERDTreeDirArrowExpandable = '⯈'
"let g:NERDTreeDirArrowCollapsible = '⯆'

map <Leader>n :NERDTreeToggle<CR>
map <Leader>t :NERDTreeFocus<CR>

" ====================================================================
"  C/C++ Enhaced 
" ====================================================================
let g:cpp_class_scope_highlight = 1
let g:cpp_member_variable_highlight = 1
let g:cpp_concepts_highlight = 1
let g:cpp_class_decl_highlight = 1
let g:cpp_concepts_highlight = 1

" ====================================================================
" JQuery 
" ====================================================================
au BufRead,BufNewFile jquery.*.js set ft=javascript syntax=jquery

" ====================================================================
" Java
" ====================================================================
autocmd FileType java setlocal omnifunc=javacomplete#Complete
let g:JavaComplete_LibsPath = "/usr/share/tomcat8/lib/*"

" ====================================================================
" Rooter
" ====================================================================
let g:rooter_silent_chdir = 1
let g:rooter_resolve_links = 1

" ====================================================================
" CSS Completer
" ====================================================================
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS noci

" ====================================================================
"  Tagbar
" ====================================================================
"let g:tagbar_left = 0
"let g:tagbar_vertical = 16
let g:tagbar_compact = 1

map <Leader>b :TagbarToggle<CR>

" ====================================================================
"  Startify
" ====================================================================
let g:startify_fortune_use_unicode = 1

" ====================================================================
" Goyo
" ====================================================================
let g:goyo_height = "90%"


