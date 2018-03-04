#!/bin/bash

echo "Atualizando repositórios"
sudo apt update

echo "Instalando atualizacoes"
sudo apt dist-upgrade

echo "Instalando i3"
sudo apt install i3
sudo apt install i3blocks -y

echo "Instalando Google Chrome"
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo rm /etc/apt/sources.list.d/google.list
sudo apt-get update
sudo apt install google-chrome-stable -y

echo "Instalando Git"
sudo apt install git -y

echo "Configurando Git"
 git config --global user.email "diegovarela.paiva@hotmail.com"
 git config --global user.name "Diego Varela"

echo "Instalando Curl"
sudo apt install curl -y

echo "Instalando Vscode"
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt update
sudo apt install code -y

echo "Configurando Vscode"
cp Configs/config-files/vscode.json .config/Code/User/settings.json

echo "Criando Configs Folder"
mkdir Configs

echo "Entrando pasta Config"
cd Configs

echo "Baixando Repositório de Configs"
git clone https://github.com/Diego-Varela-Silva/config-files.git

echo "Instalando Rofi"
sudo apt install rofi -y

echo "Instalando playerctl"
wget https://github.com/acrisci/playerctl/releases/download/v0.5.0/playerctl-0.5.0_amd64.deb
sudo dpkg -i playerctl-0.5.0_amd64.deb
sudo rm -rf playerctl-0.5.0_amd64.deb

echo "Instalando feh"
sudo apt install feh -y

echo "Instalando Compton"
sudo apt install compton -y

echo "Instalando lxappearence"
sudo apt install lxappearance -y

echo "Instalando thunar"
sudo apt install thunar -y

echo "Instalando ArcTheme"
sudo add-apt-repository ppa:noobslab/themes
sudo add-apt-repository ppa:noobslab/icons
sudo apt update
sudo apt install arc-theme arc-icons -y

echo "Instalando SoundSwitcher"
sudo apt-add-repository ppa:yktooo/ppa
sudo apt update
sudo apt install indicator-sound-switcher

echo "Configurando Comando Luminosidade"
sudo cp config-files/brightness /bin/brightness
sudo chmod +x /bin/brightness

echo "Copiando Pasta de Fonts"
mkdir -p ~/.fonts
cd ~/.fonts
cp ~/Configs/config-files/fonts/* ./

echo "Copiando Configuracoes da Barra"
cp ~/Configs/config-files/i3blocks.conf ~/.config/i3/i3blocks.conf

echo "Configurando Themas"
cd
cp Configs/config-files/gtkrc-2.0 .gtkrc-2.0
cp Configs/config-files/gtkrc-3.0 .config/gtk-3.0/settings.ini

echo "Configurando Imagem De Bloqueio"
cp Configs/config-files/.wallpaper.jpg Imagens/.wallpaper.jpg

echo "Copiando I3 configs"
cp Configs/config-files/config .config/i3/config

echo "Instalando Spotify"
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 0DF731E45CE24F27EEEB1450EFDC8610341D9410
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt update
sudo apt install spotify-client

echo "Instando ZSH"
sudo apt install zsh -y
chsh -s $(which zsh)

echo "Instalando oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

echo "Adicionando alias"
cat Configs/config-files/alias.sh >> .zshrc

echo "Instalando HTOP"
sudo apt install htop -y

echo "Instalando Gparted"
sudo apt install gparted -y

echo "Instalando Ccze"
sudo apt install ccze -y

echo "Instalando Java"
sudo apt-get install python-software-properties -y
sudo add-apt-repository ppa:webupd8team/java
sudo apt update
sudo apt install oracle-java8-set-default

echo "Instalando Stremio"
sudo wget "https://www.strem.io/download?platform=linux&four=4" -O /bin/stremio
sudo chmod +x /bin/stremio

echo "Instalando Dropbox"
sudo apt install nautilus-dropbox
sudo apt install thunar-dropbox-plugin
/usr/bin/dropbox start -i
/usr/bin/dropbox autostart y

echo "Configure seu profile no terminal"
echo "Configure thunar"
echo "Instale suas extensoes do vscode"
