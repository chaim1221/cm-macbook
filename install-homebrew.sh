#!/bin/sh
#(the default shell; in Mac OS X, this is bash)

# x - + # # # # # # # # # # # # #
# Mac OS X initial setup script #
#                    ::homebrew #
# # by Chaim Eliyah # # # # # # #

# ${homebrew:-install homebrew}
which -s brew
if [[ $? != 0 ]] ; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi

brew update
brew upgrade
# brew doctor # what does it do?
