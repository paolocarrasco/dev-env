#! /bin/bash

if ! [ -x "$(command -v brew)" ]
then
    echo "Homebrew was not installed. Installing it now."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# cli tools
brew install --cask iterm2
brew install tmuxp
brew install docker
brew install powerline-go
brew install awscli
brew install ranger

# communication tools
brew install --cask google-chrome
brew install --cask firefox
brew install --cask slack
brew install --cask zoom

# IDE
brew install --cask jetbrains-toolbox

# languages
brew install node
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
brew install --cask oracle-jdk

# utilities
brew install --cask spectacle
brew install --cask caffeine
brew install --cask keycastr
brew install mdp
