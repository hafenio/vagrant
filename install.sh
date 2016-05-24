#!/bin/bash

sudo echo "Europe/Berlin" | sudo tee /etc/timezone
sudo dpkg-reconfigure -f noninteractive tzdata
sudo locale-gen de_DE.UTF-8
sudo apt-get update -y
sudo apt-get install -y htop vim

git clone https://github.com/creationix/nvm.git ~/.nvm && cd ~/.nvm && git checkout `git describe --abbrev=0 --tags`
echo "source ~/.nvm/nvm.sh" >> ~/.profile
source ~/.profile

nvm install 6.2.0
nvm alias default 6.2.0

npm install -g nodemon
npm install -g webpack

echo "Done"
