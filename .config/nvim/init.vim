"set runtimepath+=~/.vim,~/.vim/after
"set packpath+=~/.vim

if exists('g:gui_oni')
  source ~/.config/nvim/onirc.vim
else
  source ~/.vimrc
endif
