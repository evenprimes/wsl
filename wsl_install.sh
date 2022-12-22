#!/bin/bash

# Setup colors
green='\e[0;32m'
yellow='\e[0;33m'
reset='\033[0m'

SCRIPTS="update_omp.sh"

echo -e "${green}Copying config files"
cp --verbose ./mosquitto_sub ~/.config/mosquitto_sub
cp --verbose ./bashrc_wsl ~/.bashrc

echo -e "${green}Creating directories"
[ ! -d ~/bin ] && mkdir ~/bin || echo ~/bin/ exists
[ ! -d ~/.1password ] && mkdir ~/.1password || echo ~/.1password/ exists

echo -e "${green}Installing scripts"
for i in $SCRIPTS; do
    cp --verbose $i ~/bin/
    chmod +x ~/bin/$i
done
