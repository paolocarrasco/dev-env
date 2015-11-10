#! /bin/sh

sudo apt-get update

sudo apt-get install --yes xclip
sudo apt-get install --yes wget
sudo apt-get install --yes git
sudo apt-get install --yes virtualbox
sudo apt-get install --yes vagrant
sudo apt-get install --yes virtualbox-dkms

wget -O- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Docker
apt-key adv --keyserver hkp://pgp.mit.edu:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-precise main > ~/docker.list
sudo cp ~/docker.list /etc/apt/sources.list.d/docker.list
sudo apt-get update
apt-get purge lxc-docker*
apt-cache policy docker-engine
sudo apt-get update
sudo apt-get install docker-engine

