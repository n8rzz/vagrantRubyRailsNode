#!/usr/bin/env bash
echo "::: --- ---- Updating system packages"

sudo apt-get -y update

echo "::: :::: :::"
echo "::: --- ---- Installing system packages"

sudo apt-get install -y build-essential libssl-dev git imagemagick libmagick-dev curl automake libpcre3-dev bison libmysqlclient-dev libxslt-dev libpq-dev libreadline-dev libyaml-dev libcurl4-openssl-dev 
sudo apt-get -y autoremove

echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"


