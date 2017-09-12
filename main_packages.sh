					# Upgrade #	
#################################################################
sudo eopkg up -y
#################################################################			
					# Misc / Privacy / Dependencies #	
#################################################################
sudo eopkg install -y golang r hugo p7zip macchanger gnome-todo asciinema bleachbit catfish ranger keepassx htop nethogs ack zsh font-awesome-ttf nautilus-actions tor wget curl vim git scrot glances thefuck
#################################################################

					# Programming Tools #
#################################################################
sudo eopkg install -y vscode rstudio
# Git Kraken (3rd Party)
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/gitkraken/pspec.xml
sudo eopkg it gitkraken*.eopkg;sudo rm gitkraken*.eopkg
#################################################################

					# Containers #
#################################################################
sudo eopkg install -y docker kitematic
#################################################################

					# Commo Tools #
#################################################################
sudo eopkg install -y wire telegram twitch		
# Slack (3rd Party)												
sudo eopkg bi -y --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/slack-desktop/pspec.xml
sudo eopkg it -y slack-desktop*.eopkg;sudo rm slack-desktop*.eopkg
# Discord (3rd party)
sudo eopkg bi -y --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/im/discord-canary/pspec.xml
sudo eopkg it -y discord*.eopkg;sudo rm discord*.eopkg
#################################################################

					# Misc Tools #
#################################################################
sudo eopkg install -y uget httrack gradio links lynx 
#################################################################

					# Mapping #
#################################################################
sudo eopkg install -y gnome-maps 
# Goole Earth (3rd)
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/programming/gitkraken/pspec.xml
sudo eopkg it gitkraken*.eopkg;sudo rm gitkraken*.eopkg
#################################################################

					# Video / Images Tools #
#################################################################
sudo eopkg install -y feh simplescreenrecorder youtube-dl youtube-viewer gimp feh peek hugin shotcut pitivi
# Pixeluvo (3rd Party)
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/graphics/pixeluvo/pspec.xml
sudo eopkg it pixeluvo*.eopkg;sudo rm pixeluvo*.eopkg
#################################################################

					# Network Tools #
################################################################# 
sudo eopkg install -y nmap httpie whois tcpdump ipscan netcat
#################################################################

					# OSINT Research Collaberation #
#################################################################
# Mendeley Desktop (3rd party)
sudo eopkg bi --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/office/mendeleydesktop/pspec.xml
sudo eopkg it mendeleydesktop*.eopkg;sudo rm mendeleydesktop*.eopkg
#################################################################

					# Browsers #
#################################################################
sudo eopkg install -y vivaldi-stable opera-stable
# Google Chrome Beta (3rd Party)
sudo eopkg bi -y --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/network/web/browser/google-chrome-beta/pspec.xml
sudo eopkg it -y google-chrome-*.eopkg;sudo rm google-chrome-*.eopkg
#################################################################

					# Office #
#################################################################
sudo eopkg install -y libreoffice-writer
#################################################################

					# Extra #
#################################################################
# Spotify (3rd Party)
sudo eopkg bi -y --ignore-safety https://raw.githubusercontent.com/solus-project/3rd-party/master/multimedia/music/spotify/pspec.xml
sudo eopkg it -y spotify*.eopkg;sudo rm spotify*.eopkg
#################################################################
