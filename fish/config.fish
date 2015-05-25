set PATH "/usr/local/opt/ruby/bin:/usr/local/share/npm/bin" $PATH

# Make Sublime the default editor
set --export EDITOR "subl -w"
 
# Make Sublime usable with git
set --export GIT_EDITOR "subl -w"

# Aliases
alias g="git"
alias ow="open *.xcworkspace"
alias op="open *.podspec"
alias on="open ~/Desktop/notes.txt"
alias oh="open /etc/hosts"
alias obp="open ~/.bash_profile"
alias oar="mate /usr/bin/anzroutes"
alias rmdd="rm -rf ~/Library/Developer/Xcode/DerivedData"
alias rt="sudo anzroutes"
alias rke="bundle exec rake"
alias sbp="source ~/.bash_profile"
