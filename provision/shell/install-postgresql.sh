#!/usr/bin/env bash

echo "::: --- ---- Installing PostgreSQL"

echo 'deb http://apt.postgresql.org/pub/repos/apt/ precise-pgdg main' | sudo tee /etc/apt/sources.list.d/pgdg.list &>/dev/null
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add - &>/dev/null

sudo apt-get update &>/dev/null
sudo apt-get install -y postgresql postgresql-client postgresql-contrib libpq-dev &>/dev/null
sudo -u postgres psql -c "create user vagrant with password 'vagrant';" &>/dev/null
sudo -u postgres psql -c "alter user vagrant with superuser;" &>/dev/null


echo "::: :::: :::: :::: :::: :::: :::: :::: :::: :::: :::"

