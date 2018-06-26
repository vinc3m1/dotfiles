alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias p="pwd"
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias gw='./gradlew'
alias mp='./manage.py'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
