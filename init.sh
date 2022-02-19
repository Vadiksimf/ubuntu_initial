#!/bin/bash

# install C++ compilator
sudo apt install build-essential checkinstall &&
sudo apt install libssl-dev &&

# install NODE, GIT, NPM
sudo apt update &&
sudo apt install nodejs; sudo apt install git; sudo apt install npm &&

# install SLACK
sudo snap install slack --classic &&

# install CHROME
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb &&
sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb &&

# install Postgres
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' &&
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add - &&
sudo apt-get update &&
sudo apt-get -y install postgresql &&

# install Redis
sudo apt install redis-server &&

# install Visual Code
sudo snap install --classic code &&

# install Postman
sudo snap install postman &&

# install Docker
sudo apt install apt-transport-https ca-certificates curl software-properties-common &&
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add - &&
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable" &&
sudo apt update &&
apt-cache policy docker-ce &&
sudo apt install docker-ce &&
sudo usermod -aG docker ${USER} &&
su - ${USER} &&
id -nG
