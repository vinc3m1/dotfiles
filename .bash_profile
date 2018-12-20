# General
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export EDITOR=vim

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export NDK_ROOT=$ANDROID_HOME/ndk-bundle
export ANDROID_NDK=$NDK_ROOT
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/tools/bin
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$NDK_ROOT
export ANDROID_ABI=armeabi-v7a
# export JAVA6_HOME=`/usr/libexec/java_home -v 1.6`
# export JAVA7_HOME=`/usr/libexec/java_home -v 1.7`
# export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
# export JAVA_HOME=$JAVA7_HOME
export M2_HOME=/usr/local/opt/maven/libexec

# Postgres
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/9.3/bin

# node
export PATH=/usr/local/bin:/usr/local/share/npm/bin:${PATH}
export NODE_PATH=/usr/local/lib/node
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion" ] && . "/usr/local/opt/nvm/etc/bash_completion"  # This loads nvm bash_completion
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# python
source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# git
source /usr/local/etc/bash_completion.d/git-completion.bash

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set iTerm2 title to current directory
if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"';
fi

# powerline-go
function _update_ps1() {
    PS1="$($GOPATH/bin/powerline-go -mode flat -error $?)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vince/google-cloud-sdk/path.bash.inc' ]; then . '/Users/vince/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vince/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/vince/google-cloud-sdk/completion.bash.inc'; fi
