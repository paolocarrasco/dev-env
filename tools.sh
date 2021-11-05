#! /bin/bash

if ! [ -x "$(command -v brew)" ]
then
  echo "Homebrew was not installed. Installing it now."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# cli tools
brew install --cask iterm2
brew install tmuxp
brew install --cask docker
brew install awscli
brew install ranger

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
brew install --cask google-chrome
brew install --cask firefox
brew install --cask slack
brew install --cask zoom

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
brew install --cask spectacle
brew install --cask caffeine
brew install --cask keycastr
brew install mdp
