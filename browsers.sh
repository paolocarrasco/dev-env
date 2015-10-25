#! /bin/sh

# Get rid of the Firefox Stable version
sudo apt-get purge firefox
if [ -d "~/.mozilla/firefox/" ]; then
  rm ~/.mozilla/firefox/
fi
if [ -d "/etc/firefox/" ]; then
  rm /etc/firefox/
fi
if [ -d "/usr/lib/firefox/" ]; then
  rm /usr/lib/firefox/
fi

# Firefox Developer
sudo add-apt-repository ppa:ubuntu-mozilla-daily/firefox-aurora
sudo apt-get update
sudo apt-get install firefox

# Chrome Beta
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb https://dl-ssl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update 
sudo apt-get install google-chrome-beta

