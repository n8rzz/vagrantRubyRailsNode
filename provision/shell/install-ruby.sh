#!/usr/bin/env bash
echo "::: --- ---- Installing Ruby"

source $HOME/.rvm/scripts/rvm
echo 'gem: --no-rdoc --no-ri' >> ~/.gemrc

rvm use $1 --install --default &>/dev/null

echo "::: :::: :::"
echo "::: --- ---- Installing Ruby Gems"

shift

if (( $# ))
then gem install $@ 
fi

rvm cleanup all

echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"

