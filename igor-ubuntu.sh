#!/bin/bash

sudo apt-get install -y apt-transport-https ca-certificates linux-image-extra

########################
### Add repositories ###
########################
# For Atom.io
sudo add-apt-repository -y ppa:webupd8team/atom

# For FishShell
sudo apt-add-repository -y ppa:fish-shell/release-2

# For JDK
sudo apt-add-repository -y ppa:webupd8team/java

# Spotify
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys BBEBDCB318AD50EC6865090613B00F1FD2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

# NodeJS
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -

# MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

# Docker
sudo apt-key adv --keyserver hkp://p80.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo deb https://apt.dockerproject.org/repo ubuntu-wily main | sudo tee /etc/apt/sources.list.d/docker.list 

# Tweaks
sudo add-apt-repository -y ppa:tualatrix/ppa 

# Hipchat
sudo sh -c 'echo "deb https://atlassian.artifactoryonline.com/atlassian/hipchat-apt-client $(lsb_release -c -s) main" > /etc/apt/sources.list.d/atlassian-hipchat4.list'
wget -O - https://atlassian.artifactoryonline.com/atlassian/api/gpg/key/public | sudo apt-key add -

# Firefox 
sudo add-apt-repository -yppa:ubuntu-mozilla-daily/firefox-aurora

# Slack
sudo apt-add-repository -y ppa:rael-gc/scudcloud
echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | sudo debconf-set-selections

##############
### Update ###
##############
sudo apt-get update

##############
### Upgade ###
##############
sudo apt-get upgrade

###############
### Install ###
###############
# Git, ...
sudo apt-get install -y git git-flow
# sourcetree

# Utilitaires
sudo apt-get install -y tree build-essential zopfli wget  unace unrar zip unzip p7zip-full p7zip-rar sharutils rar uudeview mpack arj cabextract file-roller filezilla gdebi
wget https://launchpad.net/ubuntu-tweak/0.8.x/0.8.7/+download/ubuntu-tweak_0.8.7-1%7Etrusty2_all.deb
sudo gdebi ubuntu-tweak_0.8.7-1~trusty2_all.deb
rm ubuntu-tweak_0.8.7-1~trusty2_all.deb

# Navigateurs
sudo apt-get install chromium-browser firefox
# firefox-developper-edition

# Languages
sudo apt-get install -y oracle-java8-installer nodejs

# Shell
sudo apt-get install -y fish

# BD
sudo apt-get install -y mongodb-org elasticsearch
# robomongo 

# Outils de Build
sudo apt-get install -y maven gradle
# maven-deluxe sbt

# Fonts
# https://github.com/tonsky/FiraCode/releases/download/1.102/FiraCode_1.102.zip
# inconsolata fira-code hack hasklig liberation-sans open-sans open-sans-condensed

# Communication
echo "You should enable 'Partner' in Preferences/Software & update/Others"
sudo apt-get install -y skype hipchat4 scudcloud

# Musique, Vidéo
sudo apt-get install -y vlc spotify-client
sudo apt-get install -y gstreamer0.10-plugins-ugly gxine libdvdread4 icedax tagtool easytag id3tool lame nautilus-script-audio-convert libmad0 mpg321 gstreamer1.0-libav httpie vim

# IDE
sudo apt-get install -y atom eclipse netbeans

# Réseaux
sudo apt-get install -y sshfs wireshark

# Outils graphique
sudo apt-get install -y inkscape shutter gimp gimp-data gimp-plugin-registry gimp-data-extras
# imagealpha imageoptim

# Docker
sudo apt-get install -y docker.io docker-compose

################
### Missings ###
################
# Fonts
# https://github.com/tonsky/FiraCode/releases/download/1.102/FiraCode_1.102.zip
# inconsolata fira-code hack hasklig liberation-sans open-sans open-sans-condensed


# 	Flux: https://doc.ubuntu-fr.org/f.lux
# 	git-lfs, gh
#	rust, racer
#	scala, sbt
#	imagemagick
# 	electric-sheep
#	aspell --with-lang-fr --with-lang-en
#	heroku-toolbelt
#	watchman ?
# 	1password
#	rescuetime
# 	maven-deluxe https://github.com/jcgay/maven-color/wiki/Installation
#	google-drive google-hangouts
#	eclipse-ide netbeans intellij-idea atom

