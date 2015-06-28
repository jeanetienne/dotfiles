set PATH "/usr/local/opt/ruby/bin:/usr/local/share/npm/bin" $PATH

# Make Sublime the default editor
set --export EDITOR "subl -w"
 
# Make Sublime usable with git
set --export GIT_EDITOR "subl -w"

# Aliases
alias g="git"
alias o="open ."
alias ow="open *.xcworkspace"
alias ox="open *.xcodeproj"
alias op="open *.podspec"
alias on="open ~/Desktop/notes.txt"
alias oh="open /etc/hosts"
alias ofc="mate ~/.config/fish/config.fish"
alias ofh="mate ~/.config/fish/fish_history"
alias oar="mate /usr/bin/anzroutes"
alias rmdd="rm -rf ~/Library/Developer/Xcode/DerivedData"
alias rt="sudo anzroutes"
alias rke="bundle exec rake"

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
