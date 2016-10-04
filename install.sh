#!/usr/bin/env bash

# DB_USER=vagrant
# DB_NAME=new_eden_faces

sudo apt-get update

sudo apt-get install git -y
sudo apt-get install build-essential -y

curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

sudo npm install -g bower

## MongoDB Installation
# Import the public key used by the package management system.
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv EA312927

# Create a list file for MongoDB.
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list

sudo apt-get update
sudo apt-get install -y mongodb-org

npm install --save-dev gulp

npm install --save-dev nodemon
npm install --save-dev eslint eslint-plugin-html
npm install --save-dev eslint-plugin-markdown
npm install --save-dev eslint-config-airbnb
cd /vagrant

npm install
