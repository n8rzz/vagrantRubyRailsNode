#!/usr/bin/env bash
echo "::: --- ---- Installing Dotfiles"

git clone https://github.com/n8rzz/dotfiles.git &>/dev/null
sh ./dotfiles/makesymlinks.sh &>/dev/null

echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"

