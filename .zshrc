# Path to your oh-my-zsh installation.
  export ZSH=/home/ivmachiavelli/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="miloshadzic"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Plugins
plugins=(gitfast urltools extract go docker debian encode64 httpie)

source $ZSH/oh-my-zsh.sh

# User configuration

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Aliases
alias fuckstarbucks="sudo rm -rf /etc/NetworkManager/system-connections/starbucks && sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"

# Docker killall
alias stopalldocker="docker stop $(docker ps -a -q)"

# Set Gopath
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

alias news="rss"
