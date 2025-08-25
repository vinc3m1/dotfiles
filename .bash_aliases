alias ll="ls -alFh --color=auto"
alias la="ls -A --color=auto"
alias l="ls -CF --color=auto"
alias p="pwd"
alias ..='cd ..'
alias ...='cd .. ; cd ..'
alias gw='./gradlew'
alias mp='./manage.py'
alias python="python3"

# Only set key bindings in interactive terminals
if [ -t 0 ]; then
    bind '"\e[A": history-search-backward' 2>/dev/null
    bind '"\e[B": history-search-forward' 2>/dev/null
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
