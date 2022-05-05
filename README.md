# ubuntu_initial
Install base apps for web-development on Ubuntu

install C++ compilator
```
sudo apt install build-essential checkinstall
sudo apt install libssl-dev
```
Install environtment Ubuntu
```
sudo apt update
sudo apt install nodejs; sudo apt install git; sudo apt install npm
```
NVM
```
sudo apt install curl
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

source ~/.bashrc

nvm list-remote

nvm install v18.1.0
```
Slack
```
sudo snap install slack --classic
```
Skype
```
1.
sudo snap install skype --classic
2.
wget https://go.skype.com/skypeforlinux-64.deb
sudo apt install ./skypeforlinux-64.deb
```
Chrome
```
 wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
 sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
```
Postgres
```
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql
```
Redis
```
sudo apt install redis-server

sudo nano /etc/redis/redis.conf
supervised systemd

sudo systemctl restart redis.service
sudo systemctl status redis

sudo systemctl disable redis

# redis-cli
# > ping
```
Docker
```
sudo apt install apt-transport-https ca-certificates curl software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu focal stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce
sudo systemctl status docker


sudo usermod -aG docker ${USER}
su - ${USER}
id -nG
```

DBeaaver
```
sudo snap install dbeaver-ce
```

Vakentina Studio
```
# sudo dpkg -i vstudio_x64_10_lin.deb
```
Visual Stusio Code
```
sudo snap install --classic code

settings code: 52dedbc89f7dbaa8f566a10e41f1b35d1368146b
```
Postman
```
sudo snap install postman
```


# Other soft
sudo apt install vlc -y


