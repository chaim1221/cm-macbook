#!/bin/sh

# x - + # # # # # # # # # # # # #
# Mac OS X initial setup script #
#                      ::docker #
# # # # by Chaim Eliyah # # # # #

# credit: https://pilsniak.com/how-to-install-docker-on-mac-os-using-brew/

which brew
if [ "$?" -ne 0 ]; then
  echo "Homebrew isn't installed; exiting."
  exit 1
fi

dockerMachineName=${1:-default}

# straight up xhyve shit
brew install \
  xhyve \
  docker \
  docker-compose \
  docker-machine \
  docker-machine-driver-xhyve

# normal docker shit: docker-machine owned by root:wheel and set user id on execution (mac os x thing: https://developer.apple.com/legacy/library/documentation/Darwin/Reference/ManPages/man1/chmod.1.html)
sudo chown root:wheel $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve
sudo chmod u+s $(brew --prefix)/opt/docker-machine-driver-xhyve/bin/docker-machine-driver-xhyve

# start a docker machine
docker-machine create $dockerMachineName --driver xhyve
# and, perhaps at a later time...:
# --xhyve-experimental-nfs-share

echo "Docker installed."
echo "Permissions set."
echo "Docker Machine with name $dockerMachineName started."
echo "To control the machine:"
echo ""
echo "  docker-machine start $dockerMachineName"
echo "  docker-machine stop $dockerMachineName"
echo "  docker-machine restart $dockerMachineName"
echo ""

# exit with success; placeholder; can increment error level in a future iteration.
exit 0
