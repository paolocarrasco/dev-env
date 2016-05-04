#! /bin/sh

# VIm
sudo apt-get install --yes vim

# Atom
wget https://github.com/atom/atom/releases/download/v1.1.0/atom-amd64.deb
sudo dpkg --install atom-amd64.deb

# IntelliJ CE
cd /usr/share
sudo wget https://download.jetbrains.com/idea/ideaIC-15.0.tar.gz
sudo tar xfz ideaIC-15.0.tar.gz

