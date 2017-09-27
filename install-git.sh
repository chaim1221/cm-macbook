#!/bin/sh

# x - + # # # # # # # # # # # # #
# Mac OS X initial setup script #
#                         ::git #
# # # # by Chaim Eliyah # # # # #

which brew
if [ "$?" -ne 0 ]; then
  echo "Homebrew isn't installed; exiting."
  exit 1
fi

# email
if [ "$1" == "" ] || [ "$2" == "" ] || [ "$3" == "" ] ; then
  echo "You must provide your email and name as an argument to this script;"
  echo ""
  echo "./git-setup.sh me@me.org Me Alsome"
  echo ""
  exit 1
fi

email=$1
firstName=$2
lastName=$3

# git
brew install git
git config --global user.email "$1"
git config --global user.name "$2 $3"
