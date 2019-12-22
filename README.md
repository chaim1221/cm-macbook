One really important fact about this repository is that the scripts 
are not intended to result in idempotent operations, per se. The goal
is to have the scripts update the programs they install, to avoid
endless "install" and "update" clones.

#### install-docker.sh
Type I? Type II? Who cares!? Run it in a container, you aren't a cloud.

#### install-homebrew.sh
Run first. Installs|updates Homebrew. Also updates all associated packages.
It is a package manager, after all.

#### install-git.sh
Run second. Installs Git.

#### install-node.sh
Everyone loves NodeJS. Or npm. Or both.

#### README.md
Good job. You follow instructions.

#### setup-ssh-key.sh
This should, given an email, setup an SSH key for you to use with GitHub.
It will prompt you for a password.
DEPRECATED
