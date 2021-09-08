#! /bin/bash

if ! [ -x "$(command -v brew)" ]
then
    echo "Homebrew was not installed. Installing it now."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

brew install --cask zoom
brew install --cask spectacle
brew install --cask iterm2
brew install tmuxp
brew install docker
brew install powerline-go
brew install awscli
brew install ranger
