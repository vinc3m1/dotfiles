export ANDROID_HOME=$HOME/Library/Android/sdk
export NDK_ROOT=$ANDROID_HOME/ndk-bundle
export ANDROID_NDK=$NDK_ROOT
export PATH=${PATH}:$ANDROID_HOME/tools
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
export M2_HOME=/usr/local/opt/maven/libexec
export EDITOR=vim
export NODE_PATH=/usr/local/lib/node
export NVM_DIR="$HOME/.nvm"
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

source /usr/local/bin/virtualenvwrapper.sh

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvmj

if [ $ITERM_SESSION_ID ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007";';
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/vince/Downloads/google-cloud-sdk/path.bash.inc' ]; then source '/Users/vince/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/vince/Downloads/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/vince/Downloads/google-cloud-sdk/completion.bash.inc'; fi
