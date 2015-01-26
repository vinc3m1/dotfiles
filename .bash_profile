export ANDROID_HOME=$HOME/Library/Android/sdk
export NDK_ROOT=$ANDROID_HOME/ndk-bundle
export PATH=${PATH}:$ANDROID_HOME/tools/bin
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$NDK_ROOT
export PATH=${PATH}:/Applications/kdiff3.app/Contents/MacOS
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/9.3/bin
export PATH=/usr/local/bin:/usr/local/share/npm/bin:${PATH}
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export WORKON_HOME=~/.virtualenvs
export ANDROID_ABI=armeabi-v7a
# export JAVA6_HOME=`/usr/libexec/java_home -v 1.6`
# export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
# export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
# export JAVA_HOME=$JAVA7_HOME
export M2_HOME=/usr/local/Cellar/maven/3.1.1/libexec
export NODE_PATH=/usr/local/lib/node
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

source /usr/local/bin/virtualenvwrapper.sh

export EDITOR=vim
export UBER_HOME="$HOME/Uber"
export VAGRANT_DEFAULT_PROVIDER=aws

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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvmj

if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
fi

if [ -f ~/.git-completion.bash ]; then
    . ~/.git-completion.bash
fi

[ -s "/usr/local/bin/virtualenvwrapper.sh" ] && . /usr/local/bin/virtualenvwrapper.sh
[ -s "$HOME/.nvm/nvm.sh" ] && . $HOME/.nvm/nvm.sh
type "brew" &>/dev/null && [ -s "$(brew --prefix)/etc/bash_completion" ] && . $(brew --prefix)/etc/bash_completion

cdsync () {
    cd $(boxer sync_dir $@)
}
editsync () {
    $EDITOR $(boxer sync_dir $@)
}
opensync () {
    open $(boxer sync_dir $@)
}
