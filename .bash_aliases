alias ll="ls -alFh --color=auto"
alias la="ls -A --color=auto"
alias l="ls -CF --color=auto"
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
