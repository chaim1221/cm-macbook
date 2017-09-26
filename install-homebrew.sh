#!/bin/sh
#(the default shell; in Mac OS X, this is bash)

# x - + # # # # # # # # # # # # #
# Mac OS X initial setup script #
#                    ::homebrew #
# # by Chaim Eliyah # # # # # # #

# homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew upgrade
