# General
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export EDITOR=vim

# macOS
export BASH_SILENCE_DEPRECATION_WARNING=1

# homebrew
eval $(/opt/homebrew/bin/brew shellenv)

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export NDK_ROOT=$ANDROID_HOME/ndk-bundle
# export NDK_ROOT=$ANDROID_HOME/ndk-r15c
export NDK_HOME=$NDK_ROOT
export ANDROID_NDK=$NDK_ROOT
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/tools/bin
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=${PATH}:$NDK_ROOT
export ANDROID_ABI=armeabi-v7a
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
# export JAVA9_HOME=`/usr/libexec/java_home -v 9`
export JAVA_HOME=$JAVA8_HOME
export M2_HOME=/usr/local/opt/maven/libexec

# Postgres
export PATH=${PATH}:/Applications/Postgres.app/Contents/Versions/9.3/bin

# node
export PATH=/usr/local/bin:/usr/local/share/npm/bin:${PATH}
export NODE_PATH=/usr/local/lib/node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# deno
export DENO_INSTALL="/Users/vince/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# golang
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# python
[[ -s "/usr/local/bin/virtualenvwrapper.sh" ]] && source /usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=~/.virtualenvs

# ruby
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# git
[[ -s "$HOME/.git-completion.bash" ]] && source $HOME/.git-completion.bash

# dart
export PATH="$PATH:$HOME/flutter/bin/cache/dart-sdk/bin"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# local bin (for repo)
export PATH="$PATH:$HOME/bin"

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
    PS1="$($GOPATH/bin/powerline-go -error $?)"
    # git and hg disabled for performance
    # PS1="$($GOPATH/bin/powerline-go -modules venv,user,host,ssh,cwd,perms,jobs,exit,root -error $?)"
}

if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# hgd
if [ -f "/etc/bash_completion.d/hgd" ]; then source '/etc/bash_completion.d/hgd'; fi
