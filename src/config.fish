
# For Homebrew (brew.sh)
set -x PATH "/usr/local/bin:$PATH"

# For Cask (caskroom.io)
set -x HOMEBREW_CASK_OPTS "--caskroom=~/Documents/Caskroom --appdir=~/Applications"

# Make Sublime the default editor
set -x EDITOR "subl -w"
 
# Make Sublime usable with git
set -x GIT_EDITOR "subl -w"

# Aliases
alias g="git"
alias o="open ."
alias ow="open *.xcworkspace"
alias ox="open *.xcodeproj"
alias on="open ~/Desktop/notes.txt"
alias ofc="mate ~/.config/fish/config.fish"
alias ofh="mate ~/.config/fish/fish_history"
alias rmdd="rm -rf ~/Library/Developer/Xcode/DerivedData"

set -x fish_color_status red
set -x fish_color_git_prompt cyan

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
