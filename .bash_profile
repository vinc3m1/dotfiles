export PATH=${PATH}:/Users/vince/Documents/android-sdk-macosx/tools
export PATH=${PATH}:/Users/vince/Documents/android-sdk-macosx/platform-tools
export PATH=${PATH}:/Applications/kdiff3.app/Contents/MacOS
export PATH=/usr/local/bin:${PATH}
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export HISTCONTROL=ignoreboth
export WORKON_HOME=~/virtualenvs
export ANDROID_SDK=/Users/vince/Documents/android-sdk-macosx
export ANDROID_NDK=/Users/vince/Documents/android-ndk-r8d/
export ANDROID_ABI=armeabi-v7a

source /usr/local/bin/virtualenvwrapper.sh

alias ll="ls -alF"
alias la="ls -A"
alias l="ls -CF"
alias p="pwd"
alias ..='cd ..'
alias ...='cd .. ; cd ..'

bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
