#!/bin/bash

function config_git
{
  # User
  git config --global user.email "git@jeanetienne.net"
  git config --global user.name "Jean-Étienne"
   
  # Basic aliases
  git config --global alias.co checkout;
  git config --global alias.br branch;
  git config --global alias.ci commit;
  git config --global alias.st status;

  echo "✅  finished configuring 'Git'"
}
