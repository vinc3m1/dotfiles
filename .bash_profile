# General
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export EDITOR=vim
stty -ixon

# macOS
export BASH_SILENCE_DEPRECATION_WARNING=1

# local bin
export PATH=${PATH}:$HOME/bin
export PATH=${PATH}:$HOME/.local/bin

# Android
export ANDROID_HOME=$HOME/Library/Android/sdk
export NDK_ROOT=$ANDROID_HOME/ndk-bundle
export NDK_HOME=$NDK_ROOT
export ANDROID_NDK=$NDK_ROOT
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk/21.4.7075529/
export PATH=${PATH}:$ANDROID_HOME/tools
export PATH=${PATH}:$ANDROID_HOME/tools/bin
export PATH=${PATH}:$ANDROID_HOME/platform-tools
export PATH=${PATH}:$ANDROID_HOME/cmdline-tools/latest/bin
export PATH=${PATH}:$ANDROID_NDK_HOME
export ANDROID_ABI=armeabi-v7a
export JAVA8_HOME=`/usr/libexec/java_home -v 1.8`
export JAVA11_HOME=`/usr/libexec/java_home -v 11`
export JAVA17_HOME=`/usr/libexec/java_home -v 17`
export JAVA_HOME=$JAVA17_HOME
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
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

# python
export PATH=$PATH:$HOME/.local/bin

# ruby (rbenv)
if command -v rbenv &> /dev/null; then eval "$(rbenv init - bash)"; fi
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# git
[[ -s "$HOME/.git-completion.bash" ]] && source $HOME/.git-completion.bash

# dart
export PATH="$PATH:$HOME/flutter/bin/cache/dart-sdk/bin"

# flutter
export PATH="$PATH:$HOME/flutter/bin"

# bazel
if [ -f "/usr/local/lib/bazel/bin/bazel-complete.bash" ]; then source /usr/local/lib/bazel/bin/bazel-complete.bash; fi

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

# oh my posh
eval "$(oh-my-posh init bash --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/refs/heads/main/themes/easy-term.omp.json')"

# The next line updates PATH for the Google Cloud SDK.
if [ -f "$HOME/google-cloud-sdk/path.bash.inc" ]; then . "$HOME/google-cloud-sdk/path.bash.inc"; fi

# The next line enables shell command completion for gcloud.
if [ -f "$HOME/google-cloud-sdk/completion.bash.inc" ]; then . "$HOME/google-cloud-sdk/completion.bash.inc"; fi

# WSL2 Keychain
if command -v keychain &> /dev/null; then eval `keychain --eval --agents ssh id_ed25519`; fi

# homebrew
if [ -f "/opt/homebrew/bin/brew" ]; then eval "$(/opt/homebrew/bin/brew shellenv)"; fi

# rust
. "$HOME/.cargo/env"
