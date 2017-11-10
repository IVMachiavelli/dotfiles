# Path to your oh-my-zsh installation.
export ZSH=/home/ivmachiavelli/.oh-my-zsh

# Term
TERM=xterm-256color

# Theme See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Plugins
plugins=(gitfast git-extras jsontools docker httpie aterminal rvm ruby rails gem)
source $ZSH/oh-my-zsh.sh

# User configuration
# You may need to manually set your language environment
export LANG=en_US.UTF-8

#################################### Alias #############################################################
##### Reload alias #####
alias Zshreload="source .zshrc"
alias Xreload="xrdb ~/.Xresources"

###### Package Management #####
alias Pacup="sudo pacman -Syyu"
alias Aurup="pacaur -u"
alias Install="sudo pacman -S"
alias Remove="sudo pacman -Rs"

##### Shutdown & logout #####
alias Shutdown="sudo shutdown -h now"

##### Clamav #####
alias Fresh="sudo freshclam"
alias Scan="sudo clamscan -r ."

##### Privacy #####
alias Mac="sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"
alias Remoteip="curl -s checkip.dyndns.org | sed -e 's/.*Current IP Address: //' -e 's/<.*$//'"  
alias Fuckstarbucks="sudo rm -rf /etc/NetworkManager/system-connections/starbucks && sudo ifconfig wlp2s0 down && sudo macchanger -r wlp2s0 && sudo ifconfig wlp2s0 up"

##### Docker #####
# Start docker service
alias Docker_start="sudo systemctl start docker"
# Kill All Docker Containers
alias Docker_prune="sudo docker system prune"
# Remove non-running Docker containers
alias Docker_remove_all="docker rm 'docker ps --no-trunc -aq'"
# Docker Powershell Developement
#alias Powershell="docker run -it --name powershell microsoft/powershell"
alias Powershell_move_to_container="docker cp $WorkingFile powershell:/home/tools"

##### Networking ##### 
alias Network_restart="sudo systemctl restart NetworkManager.service"
alias Network_stop="sudo systemctl stop NetworkManager.service"
alias OpenVpn="cd /etc/openvpn/"

##### Misc #####
# Set Gopath												     	
export GOPATH=$HOME/go												
export PATH=$PATH:$GOPATH/bin

# SSH
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Gem install (Arch)
alias Gem_install="sudo gem install --no-user-install"
