#! /bin/bash

if ! [ -x "$(command -v brew)" ]
then
  echo "Homebrew was not installed. Installing it now."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew upgrade

# installing all the brew apps
brew bundle --file=Brewfile

# installing powerline
pip3 install powerline-status
git clone https://github.com/powerline/fonts.git --depth=1

# installing fonts
if test -d fonts; then
  # this folder should exist as it was verified in the condition
  # shellcheck disable=SC2164
  cd fonts
  # this is a file that is inside the repo
  ./install.sh

  # clean-up a bit the installed fonts
  # shellcheck disable=SC2103
  cd ..
  rm -rf fonts
else
  echo "The fonts repo was not found. Skipping the installation of the fonts"
  echo "Make sure to install the fonts manually (check if you have internet connection)"
fi

pip3 install powerline-gitstatus

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] || (echo "NVM was not installed. Installing it now." && \
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash)
