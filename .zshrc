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
alias Search="sudo eopkg search"

# Weather
alias Weather="curl wttr.in/Bangkok"

# Networking
alias Mac="sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"
alias RemoteIp="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"
alias Fuckstarbucks="sudo rm -rf /etc/NetworkManager/system-connections/starbucks && sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"

# Docker
# Kill All Docker Containers
alias DockerPrune="sudo docker system prune"

# Remove non-running Docker containers
alias DockerRemoveAll="docker rm 'docker ps --no-trunc -aq'"

# Powershell AppImage
alias PowerShell=~/PowerShell/PowerShell_AppImage/./PowerShell-6.0.0-beta.7-x86_64.AppImage

# Docker Powershell Developement
alias PowershellDocker="docker run -it --name powershell microsoft/powershell-nightly"
alias PowershellMoveToContainer="docker cp $WorkingFile powershell:/home/tools"

alias Notes="(cd ~/Projects/OSINT_CheatSheet/ && hugo server)"
alias sha1sum="sha1sum * | awk 'print $1'"
################################### Misc ####################################################################
# Set Gopath
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# thefuck
eval $(thefuck --alias)

# wal Script Requirement
# (wal -r &)
# If the command above doesn't work, try this alternative.
# setsid wal -r
###############################################################################################################
