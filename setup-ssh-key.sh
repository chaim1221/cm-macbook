#!/bin/sh

# x - + # # # # # # # # # # # # #
# Mac OS X initial setup script #
#                         ::git #
# # # # by Chaim Eliyah # # # # #

# email
if [ "$1" == "" ]; then
  echo "You must provide your email as an argument to this script;"
  echo ""
  echo "./setup-ssh-key.sh me@me.org"
  echo ""
  exit 1
fi
email=$1

# ssh
echo "Please create a secure passphrase for your GitHub SSH key."
ssh-keygen -t rsa -b 4096 -C "$email" -f $HOME/.ssh/id_rsa
eval "$(ssh-agent -s)"
cat <<EOF > $HOME/.ssh/config
Host *
 AddKeysToAgent yes
 UseKeychain yes
 IdentityFile ~/.ssh/id_rsa
EOF
ssh-add -K $HOME/.ssh/id_rsa
pbcopy < ~/.ssh/id_rsa.pub
echo "Your public key has been copied to the clipboard and you can now"
echo "paste it into GitHub for $email -- enjoy!"
