#!/usr/bin/env bash
echo "::: --- ---- Installing Node and NPM"

curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - &>/dev/null
sudo apt-get install -y nodejs &>/dev/null

npm install -g gulp grunt http-server bower grunt-cli node-sass &>/dev/null

echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"


