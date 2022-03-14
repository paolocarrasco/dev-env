#! /bin/bash

if ! [ -x "$(command -v brew)" ]
then
  echo "Homebrew was not installed. Installing it now."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew upgrade

# cli tools
brew install --cask iterm2 docker
brew install tmuxp awscli ranger

# installing powerline
pip3 install powerline-status
git clone https://github.com/powerline/fonts.git --depth=1

# installing fonts
cd fonts
./install.sh
# clean-up a bit the installed fonts
cd ..
rm -rf fonts

pip3 install powerline-gitstatus

# communication tools
brew install --cask google-chrome firefox slack zoom

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
brew install --cask spectacle caffeine keycastr flycut
brew install mdp
