#!/usr/bin/env bash
install_vundle () {
  if [[ ! -d ~/.vim ]]; then
    echo "Vundle not installed.  Installing Vundle..."
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
    echo "done"
  fi
}

install_vim_plugins () {
  echo "Installing VIM plugins..."
  vim +PluginInstall +qall
  echo "...done"
}

install_vundle &>/dev/null
install_vim_plugins&>/dev/null
