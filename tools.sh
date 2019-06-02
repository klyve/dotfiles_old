#!/usr/bin/env bash

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# -------------------------------
# -------- Applications ---------
# -------------------------------
# Must have applications
brew cask install slack
brew cask install caprine
brew cask install spotify
brew cask install 1password
brew cask install alfred

# Browsers
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install firefox

# Terminal 
brew cask install iterm2

# Design tools
brew cask install figma
brew cask install zeplin
brew cask install homebrew/cask-versions/google-chrome-canary

# Development
brew cask install docker
brew cask install minikube
brew cask install tableplus
brew install neovim
brew cask install visual-studio-code
brew cask install geektool
brew cask install cyberduck


# -------------------------------
# --------- Dev tools ----------
# -------------------------------

brew install kubectl
brew install jq
brew install vault
brew install consul

# Python
brew install python3
sudo easy_install pip

# databases
brew install postgres
createdb $USER
brew install postgis
brew install mongodb
brew install redis

# RVM
brew install gnupg
gpg --keyserver hkp://pool.sks-keyservers.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB
\curl -sSL https://get.rvm.io | bash -s stable --ruby

# Node
brew install node
npm install -g react-native-cli
npm install -g nodemon
npm install -g n
npm install --global pure-prompt

# -------------------------------
# ------- Terminal tools --------
# -------------------------------
brew install fzf
$(brew --prefix)/opt/fzf/install --all
brew install circleci
circleci setup
circleci config validate
brew install ack
brew install httpie

pip3 install awscli
pip3 install aws-google-auth

if [ ! -x "$(command -v aws-iam-authenticator)" ]; then
    echo "Installing AWS IAM authenticator for macos"
    curl -o aws-iam-authenticator https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/darwin/amd64/aws-iam-authenticator
    curl -o aws-iam-authenticator.sha256 https://amazon-eks.s3-us-west-2.amazonaws.com/1.12.7/2019-03-27/bin/darwin/amd64/aws-iam-authenticator.sha256
    openssl sha1 -sha256 aws-iam-authenticator
    chmod +x ./aws-iam-authenticator
    mkdir -p $HOME/bin && cp ./aws-iam-authenticator $HOME/bin/aws-iam-authenticator && export PATH=$HOME/bin:$PATH
    echo "Cleaning up IAM install"
    rm aws-iam-authenticator.sha256
    rm aws-iam-authenticator
fi



