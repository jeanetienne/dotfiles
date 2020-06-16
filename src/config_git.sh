#!/bin/bash

function config_git
{
  # User
  git config --global user.email "git@jeanetienne.net"
  git config --global user.name "Jean-Étienne"

  # Config
  git config --global pull.default current
  git config --global pull.ff only
  git config --global push.default current
  git config --global credential.helper osxkeychain
  git config --global diff.algorithm histogram

  # Basic aliases
  git config --global alias.co "checkout"; 
  git config --global alias.br "branch"; 
  git config --global alias.ci "commit"; 
  git config --global alias.st "status"; 
  git config --global alias.com "checkout master"; 
  git config --global alias.rbm "rebase master"; 
  git config --global alias.rbi "rebase -i"; 
  git config --global alias.rbim "rebase -i master"; 
  git config --global alias.rbc "rebase --continue"; 
  git config --global alias.rba "rebase --abort"; 
  git config --global alias.fwlpush "push --force-with-lease"
  git config --global alias.uncommit "reset --soft HEAD^"

  echo "✅  finished configuring 'Git'"
}
