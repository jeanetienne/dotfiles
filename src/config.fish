# Disable fish greeting
set -U fish_greeting ""

# For Homebrew (brew.sh)
set -x PATH /usr/local/opt/ruby@2.7/bin /usr/local/bin $PATH
set -x HOMEBREW_NO_ANALYTICS 1

# For Cask (caskroom.io)
set -x HOMEBREW_CASK_OPTS --appdir=~/Applications

# For Fastlane
set -x PATH $HOME/.fastlane/bin $PATH

set -x LC_ALL en_US.UTF-8
set -x LANG en_US.UTF-8

# Make TextMate the default editor
set -x EDITOR "/usr/local/bin/mate -w"
 
# Make TextMate usable with git
set -x GIT_EDITOR "/usr/local/bin/mate -w"

# Aliases
alias g="git"
alias o="open ."
alias ow="open *.xcworkspace"
alias ox="open *.xcodeproj"
alias ofc="mate ~/.config/fish/config.fish"
alias rmdd="rm -rf ~/Library/Developer/Xcode/DerivedData"

set -x fish_color_status red
set -x fish_color_git_prompt cyan

function standardise-simulator --description 'Sets the simulator to 9:41 and full bars'
    xcrun simctl status_bar booted override --time 9:41 --dataNetwork wifi --wifiMode active --wifiBars 3 --cellularMode active --cellularBars 4 --batteryState charged --batteryLevel 100
end

function git-close-branch --description 'Switches to main and deletes the current branch'
    set -l branch (git rev-parse --abbrev-ref HEAD)
    git checkout main
    git pull -p
    if test $branch != 'main'
      git branch -d $branch
    end
end

function fish_prompt --description 'Write out the prompt'
    set -l last_status $status
    set -l delim '>'

    if test $last_status -ne 0
        set -g prompt_status "[$last_status] "
    else
        set -g prompt_status ""
    end

    echo -sn (set_color $fish_color_status) $prompt_status (set_color $fish_color_cwd) (prompt_pwd) (set_color $fish_color_git_prompt) (__fish_git_prompt) (set_color $fish_color_normal) ' ' $delim ' '
end
