##ToDo COPIAR ARCHIVOS DE CONFIGURACION A LOS DIRECTORIOS OCULTOS .icewm y a los directorios ocultos en el home Y LUEGO:

##CONFIGURACIÓN ICEWM:
cp -rf ./home-conf-files/icewm ~/.icewm

##CONFIGURACIÓN MOC PLAYER
cp -rf ./home-conf-files/moc ~/.moc

##CONFIGURACIÓN PCMANFM
cp -rf ./home-conf-files/config/pcmanfm ~/.config/
##default background:
cp -f ./home-conf-files/default_background.jpeg ~/.default_background.jpeg

##CONFIGURACIÓN DE XCREENSAVER:
cp -f ./home-conf-files/xscreensaver ~/.xscreensaver

##CONFIGURACIÓN BASHRC:
cp -f ./home-conf-files/bashrc ~/.bashrc

##CONFIGURACIÓN GTKRC
cp -f ./home-conf-files/gtkrc-2.0 ~/.gtkrc-2.0

##CONFIGURACIÓN PROFILE
cp -f ./home-conf-files/profile ~/.profile

##CONFIGURACIÓN XTERM:
cp -f ./home-conf-files/Xresources ~/.Xresources
##actualizar configuración de xterm con entorno X iniciado
#xrdb -merge ~/.Xresources

##CONFIGURACIÓN GEANY:
cp -rf ./home-conf-files/config/geany ~/.config/
