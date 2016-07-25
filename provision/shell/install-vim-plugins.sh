#!/usr/bin/env bash
echo "::: --- ---- Installing VIM plugins"

install_vundle () {
  if [[ ! -d ~/.vim ]]; then
    git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
  fi
}

install_vim_plugins () {
  vim +PluginInstall +qall
}

install_vundle &>/dev/null
install_vim_plugins&>/dev/null

echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"

