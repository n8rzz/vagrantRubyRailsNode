#!/usr/bin/env bash
echo "::: --- ---- Installing RVM"
 
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 &>/dev/null
curl -sSL https://get.rvm.io | bash -s $1 &>/dev/null 

echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"


