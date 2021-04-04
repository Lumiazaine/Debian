#!/bin/bash

#añadiendo usuario a sudoers

## Add variable $USER para hacerlo universal.

usermod -aG sudo david

#Repo non-free

sudo apt-add-repository non-free && sudo apt update
sudo apt install -y firmware-linux-nonfree
sudo apt install -y firmware-iwlwifi
sudo apt upgrade -y

#Instalando Debs

sudo apt install -y wget
wget https://dl.discordapp.net/apps/linux/0.0.14/discord-0.0.14.deb && sudo apt install ./discord*
wget https://repo.steampowered.com/steam/archive/precise/steam_latest.deb && sudo apt install ./steam* 
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.14.0-amd64.deb && sudo apt install ./slack*
wget https://dl.teamviewer.com/download/linux/version_15x/teamviewer_15.16.8_amd64.deb && sudo apt install ./teamvie*
wget https://github-releases.githubusercontent.com/31598574/0a2ef480-396d-11eb-84be-96f3a16061ef?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20210403%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20210403T165810Z&X-Amz-Expires=300&X-Amz-Signature=dcd8ec6603ced4d73ac6d0c260eade0a0e11938b5538e40fe2a564b43eeaccfa&X-Amz-SignedHeaders=host&actor_id=27073701&key_id=0&repo_id=31598574&response-content-disposition=attachment%3B%20filename%3Dmuseeks-amd64.deb&response-content-type=application%2Foctet-stream && sudo apt install ./musee*
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb && sudo apt install ./google*
wget https://www.softmaker.net/down/softmaker-freeoffice-2018_982-01_amd64.deb && sudo apt install ./softmaker*
sudo apt-get install -y gnome-tweak-tool vlc telegram-desktop

#Spotify

sudo apt install -y curl
curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | sudo apt-key add - echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update && sudo apt-get install -y spotify-client

#Configurando Tema

mkdir ~/.themes
mkdir ~/.icons
mv ./.icons/Tela-black ~/.icons
mv ./.themes/Nordic-darker ~/.themes
sudo cp ./Wallpaper/* /usr/share/backgrounds
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/rei.jpg'
gsettings set org.gnome.desktop.wm.preferences button-layout "close,minimize,maximize:"