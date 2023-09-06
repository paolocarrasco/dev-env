#! /bin/bash

if ! [ -x "$(command -v brew)" ]
then
  echo "Homebrew was not installed. Installing it now."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew upgrade

# cli tools
brew install --cask iterm2 docker
brew install tmuxp awscli ranger bat eza git-delta jq

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

# communication tools
brew install --cask google-chrome zoom

# IDE
brew install --cask jetbrains-toolbox

# languages
brew install node

export NVM_DIR="$HOME/.nvm"

[ -s "$NVM_DIR/nvm.sh" ] || (echo "NVM was not installed. Installing it now." && \
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash)

brew install --cask oracle-jdk
brew install jenv


# utilities
brew install --cask rectangle caffeine keycastr
brew install mdp
