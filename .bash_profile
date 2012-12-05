export PATH=${PATH}:/Users/vince/Documents/android-sdk-macosx/tools/
export PATH=${PATH}:/Users/vince/Documents/android-sdk-macosx/platform-tools/
export PATH=${PATH}:/Applications/kdiff3.app/Contents/MacOS
export PATH=${PATH}:/Library/PostgreSQL/9.0/bin
export PATH=${PATH}:/usr/local/mysql/bin
export PATH=${PATH}:/usr/local/sbin
export DYLD_LIBRARY_PATH=/usr/local/mysql/lib/
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export WORKON_HOME=~/virtualenvs

source /usr/local/bin/virtualenvwrapper.sh

alias sc="script/console"
alias sg="script/generate"
alias ss="script/server"
alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias p="pwd"
alias ..='cd ..'
alias ...='cd .. ; cd ..'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
