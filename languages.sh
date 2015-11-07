#! /bin/sh

# Node
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

# Python, Ruby are already stored in an Ubuntu machine

# Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default
