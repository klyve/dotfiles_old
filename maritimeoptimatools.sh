#!/usr/bin/env bash

set -euo pipefail

sudo -v

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"


# Applications
brew install --cask slack
brew install --cask 1password
brew install --cask figma

# Browsers
brew install --cask google-chrome
brew install --cask google-chrome-canary
brew install --cask firefox
brew install --cask firefox-nightly

# Development
brew cask install docker
brew cask install virtualbox
brew install azure-cli
brew install kubectl
brew install kubectx
brew install jq
brew install cmake
brew install cfssl
brew install protobuf
brew install argoproj/tap/argo
brew install --cask android-studio

brew install --cask osxfuse
brew install datawire/blackbird/telepresence

# RVM
brew install gnupg
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby

brew install node

npm install -g react-native-cli
npm install -g nodemon


brew install fzf
$(brew --prefix)/opt/fzf/install --all
