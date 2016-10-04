# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.box_check_update = false
  config.vm.network "forwarded_port", guest: 5000, host: 5000
  config.vm.network "private_network", ip: "192.168.33.10"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
     vb.gui = false
     vb.memory = "4000"
  end

  config.vm.provision "shell", inline: <<-SHELL
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

  cd /vagrant

  npm install
  SHELL
end
