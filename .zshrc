################################# Oh My ZSH ############################################################
# Path to your oh-my-zsh installation.
export ZSH=/home/ivmachiavelli/.oh-my-zsh

# Term
TERM=xterm-256color

# Theme See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="blinks"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Plugins
plugins=(gitfast urltools extract go docker encode64 httpie)
source $ZSH/oh-my-zsh.sh

# User configuration
# You may need to manually set your language environment
export LANG=en_US.UTF-8

#################################### Alias #############################################################
# Reload alias
alias Zshreload="source .zshrc"
alias Xreload="xrdb ~/.Xresources"

# Package Management
alias Up="sudo eopkg up"
alias Install="sudo eopkg install"
# Misc
alias Weather="curl wttr.in/cebu"

# Networking
alias Mac="sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"
alias RemoteIp="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"  
alias Fuckstarbucks="sudo rm -rf /etc/NetworkManager/system-connections/starbucks && sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"

# Docker
# Kill All Docker Containers
alias Stopalldocker="sudo docker stop $(docker ps -a -q)"

# Docker Developement
alias Powershell="docker run -it --name powershell microsoft/powershell"
alias PowerMoveDocker="docker cp powershell.ps1 powershell:/home/tools"

# Remove non-running Docker containers
alias Removealldocker="sudo docker rm `(docker ps -q && docker ps -qa) | sort | uniq -u`"

################################### Misc ####################################################################
# Set Gopath												     	
export GOPATH=$HOME/go												
export PATH=$PATH:$GOPATH/bin

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# thefuck
eval $(thefuck --alias) 

# wal Script Requirement
(wal -r &)
# If the command above doesn't work, try this alternative.
setsid wal -r
###############################################################################################################
