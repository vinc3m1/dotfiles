export ANDROID_HOME='/Applications/Android Studio.app/sdk'
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:/Applications/kdiff3.app/Contents/MacOS
export PATH=/usr/local/bin:/usr/local/share/npm/bin:${PATH}
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export WORKON_HOME=~/.virtualenvs
export ANDROID_ABI=armeabi-v7a
export JAVA_HOME=`/usr/libexec/java_home -v 1.6`
export M2_HOME=/usr/share/maven
export NODE_PATH=/usr/local/lib/node

source /usr/local/bin/virtualenvwrapper.sh

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias p="pwd"
alias ..='cd ..'
alias ...='cd .. ; cd ..'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
