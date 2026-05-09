# Skip if not interactive (safe-guard for scp, rsync, non-interactive ssh).
case $- in *i*) ;; *) return ;; esac

# General
export CLICOLOR=1
export HISTCONTROL=ignoreboth
export EDITOR=vim
# Only run stty in interactive terminals
if [ -t 0 ]; then
    stty -ixon
fi

# OS-specific
case "$OSTYPE" in
    darwin*)
        export BASH_SILENCE_DEPRECATION_WARNING=1
        export LSCOLORS=ExFxCxDxBxegedabagacad
        export ANDROID_HOME=$HOME/Library/Android/sdk
        if [ -x /usr/libexec/java_home ]; then
            export JAVA17_HOME=$(/usr/libexec/java_home -v 17 2>/dev/null)
            [ -n "$JAVA17_HOME" ] && export JAVA_HOME=$JAVA17_HOME
        fi
        [ -d /usr/local/opt/maven/libexec ] && export M2_HOME=/usr/local/opt/maven/libexec
        [ -d /Applications/Postgres.app/Contents/Versions/9.3/bin ] && \
            export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/9.3/bin
        ;;
    linux*)
        # GNU ls reads LS_COLORS from `dircolors` by default; nothing to set.
        [ -d "$HOME/Android/Sdk" ] && export ANDROID_HOME=$HOME/Android/Sdk
        ;;
esac

# local bin
export PATH=${PATH}:$HOME/bin
export PATH=${PATH}:$HOME/.local/bin

# Android (only if SDK is installed)
if [ -n "$ANDROID_HOME" ]; then
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
fi

# node
export PATH=/usr/local/bin:/usr/local/share/npm/bin:${PATH}
export NODE_PATH=/usr/local/lib/node
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# deno
export DENO_INSTALL="$HOME/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

# golang
export GOPATH=$HOME/go
export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:$GOPATH/bin

# git
[[ -s "$HOME/.git-completion.bash" ]] && source $HOME/.git-completion.bash

# dart / flutter
export PATH="$PATH:$HOME/flutter/bin/cache/dart-sdk/bin"
export PATH="$PATH:$HOME/flutter/bin"

# bazel
if [ -f "/usr/local/lib/bazel/bin/bazel-complete.bash" ]; then source /usr/local/lib/bazel/bin/bazel-complete.bash; fi

# Alias definitions
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# set iTerm2 title to current directory
if [ "$ITERM_SESSION_ID" ]; then
    export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"'
fi

# WSL2 Keychain
if command -v keychain &> /dev/null; then eval `keychain --eval --agents ssh id_ed25519`; fi

# homebrew
if [ -f "/opt/homebrew/bin/brew" ]; then eval "$(/opt/homebrew/bin/brew shellenv)"; fi

# ruby (rbenv) (must be after homebrew)
if command -v rbenv &> /dev/null; then eval "$(rbenv init - bash)"; fi
export GEM_HOME=$HOME/.gem
export PATH=$GEM_HOME/bin:$PATH

# oh my posh
if command -v oh-my-posh &> /dev/null; then
    eval "$(oh-my-posh init bash --config '~/.easy-term.omp.json')"
fi

# rust
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Google Cloud SDK
if [ -f '/Users/vince/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/Users/vince/Downloads/google-cloud-sdk/path.bash.inc'; fi
if [ -f '/Users/vince/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/vince/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# LM Studio CLI (lms)
[ -d "$HOME/.lmstudio/bin" ] && export PATH="$PATH:$HOME/.lmstudio/bin"
