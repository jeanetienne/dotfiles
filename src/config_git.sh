#!/bin/bash

function config_git
{
    # User
    git config --global user.email "git@jeanetienne.net"
    git config --global user.name "Jean-Étienne"

    # Config
    git config --global --add pull.default current
    git config --global --add push.default current
  git config --global credential.helper osxkeychain

  # Basic aliases
  git config --global alias.co checkout;
  git config --global alias.br branch;
  git config --global alias.ci commit;
  git config --global alias.st status;
  git config --global alias.cod checkout develop;
  git config --global alias.rbm rebase master;
  git config --global alias.rbim rebase -i master;
  git config --global alias.rbc rebase --continue;
  git config --global alias.rba rebase --abort;
    

    echo "✅  finished configuring 'Git'"
}
