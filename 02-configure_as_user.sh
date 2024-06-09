#!/bin/bash
##ToDo COPIAR ARCHIVOS DE CONFIGURACION A LOS DIRECTORIOS OCULTOS .icewm y a los directorios ocultos en el home Y LUEGO:

##CONFIGURACIÓN ICEWM:
##Borro el directorio si ya existiera
if [ -d "./.icewm" ];
	then rm -r ./.icewm;
fi
cp -rf ./home-conf-files/icewm ~/.icewm

##CONFIGURACIÓN MOC PLAYER
##Borro el directorio si ya existiera
if [ -d "./.moc" ];
	then rm -r ./.moc;
fi
cp -rf ./home-conf-files/moc ~/.moc

##CONFIGURACIÓN Midnight Commander
cp -rf ./home-conf-files/config/mc ~/.config/
##CONFIGURACIÓN GTK3.0
cp -rf ./home-conf-files/config/gtk-3.0 ~/.config/
##CONFIGURACIÓN PCMANFM
cp -rf ./home-conf-files/config/pcmanfm ~/.config/
##default background:
cp -f ./home-conf-files/default_background.jpeg ~/.default_background.jpeg

##CONFIGURACIÓN DE XSCREENSAVER:
cp -f ./home-conf-files/xscreensaver ~/.xscreensaver

##CONFIGURACIÓN BASHRC:
cp -f ./home-conf-files/bashrc ~/.bashrc

##CONFIGURACIÓN GTKRC
cp -f ./home-conf-files/gtkrc-2.0 ~/.gtkrc-2.0

##CONFIGURACIÓN PROFILE
cp -f ./home-conf-files/profile ~/.profile

##CONFIGURACIÓN XTERM:
cp -f ./home-conf-files/Xresources ~/.Xresources

##CONFIGURACIÓN GEANY:
cp -rf ./home-conf-files/config/geany ~/.config/
