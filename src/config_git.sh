#!/bin/bash

function config_git
{
    # User
    git config --global user.email "git@jeanetienne.net"
    git config --global user.name "Jean-Étienne"

    # Config
    git config --global --add pull.default current
    git config --global --add push.default current

    # Basic aliases
    git config --global alias.co checkout;
    git config --global alias.br branch;
    git config --global alias.ci commit;
    git config --global alias.st status;
    git config --global alias.cod checkout develop;
    git config --global alias.rb rebase develop;
    git config --global alias.rbi rebase -i develop;
    git config --global alias.rbc rebase --continue;
    git config --global alias.rba rebase --abort;

    echo "✅  finished configuring 'Git'"
}
