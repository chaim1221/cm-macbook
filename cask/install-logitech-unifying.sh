#!/bin/sh

# not sure if this was necessary

#ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" \
#  < /dev/null 2> /dev/null ; brew install caskroom/cask/brew-cask 2> /dev/null

brew tap caskroom/drivers

brew cask install logitech-unifying
