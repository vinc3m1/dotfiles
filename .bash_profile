export ANDROID_HOME='/Applications/Android Studio.app/sdk'
export NDK_ROOT=$HOME/Documents/android-ndk
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$HOME/Documents/android-ndk
export PATH=${PATH}:/Applications/kdiff3.app/Contents/MacOS
export PATH=/usr/local/bin:/usr/local/share/npm/bin:${PATH}
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export WORKON_HOME=~/.virtualenvs
export ANDROID_ABI=armeabi-v7a
export JAVA6_HOME=`/usr/libexec/java_home -v 1.6`
export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA_HOME=$JAVA8_HOME
export M2_HOME=/usr/local/Cellar/maven/3.1.1/libexec
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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*


if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi
