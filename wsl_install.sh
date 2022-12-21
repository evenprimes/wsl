#!/bin/sh

cp --verbose ./mosquitto_sub ~/.config/mosquitto_sub
cp --verbose ./bashrc_wsl ~/.bashrc

[ ! -d ~/bin ] && mkdir ~/bin || echo ~/bin/ exists
[ ! -d ~/.1password ] && mkdir ~/.1password || echo ~/.1password/ exists

SCRIPTS="update_omp.sh"

for i in $SCRIPTS
do
    cp --verbose $i ~/bin/
    chmod +x ~/bin/$i
done
