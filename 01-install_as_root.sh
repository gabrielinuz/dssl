#!/bin/bash
######################################################################################################################
######################################################################################################################
##SISTEMA
##su -m, -p, --preserve-environment
##              Preserve  the  entire  environment,  i.e.  it does not set HOME,
##              SHELL, USER nor LOGNAME.  This option is ignored if  the  option
##              --login is specified.
#su -p

##ToDo: quizá mejor descargar todo y descomprimir desde la web

##CONFIGURAR REPOSITORIOS DEBIAN 10
cp -f ./etc-conf-files/sources.list /etc/apt/sources.list
apt update
#apt-get -y dist-upgrade

##MIDNIGHT COMMANDER
apt install -y mc

##VER CONSUMO DE DISCO DE CADA DIRECTORIO
apt install -y ncdu

##VER CONSUMO DE MEMORIA y PROCESOS
apt install -y htop

##GRUB con temas: -> To Do
#apt install -y grub2-splashimages
#apt install -y plymouth plymouth-label plymouth-themes
#cp -f /etc/grub.d/05_debian_theme /etc/default/grub.d
#cp -f /etc/grub.d/05_debian_theme /etc/default/grub.d
#cp -f ./etc-conf-files/grub /etc/default/grub


#		Editar el archivo /etc/default/grub
#		donde dice: GRUB_CMDLINE_LINUX_DEFAULT="quiet"
#		agregar splash así: GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
#update-grub

    ##COMO USAR PLYMOUTH:
    ##Plymouth is a bootsplash for Linux supporting animations using Direct Rendering Manager and KMS driver. It gets ##packed into the initrd. Besides eye-candy, Plymouth also handles user interaction during boot. Wikipedia

    ##Installation instructions:

    ##    copy YOURTHEME folder to usr/share/plymouth/themes/YOURTHEME

    ##    run in terminal as a root:

    ##    plymouth-set-default-theme YOURTHEME -R

##XSERVER x11-server-utils for xrdb command
apt install -y xserver-xorg 
apt install -y xserver-xorg-video-all 
apt install -y x11-xserver-utils

##ICEWM
apt install -y icewm

##XSCREENSAVER
apt install -y xscreensaver xscreensaver-data

##PARA GESTIONAR ESCRITORIO Y COMO EXPLORADOR DE ARCHIVOS PCMANFM CON RECOMENDADOS:	
apt install -y --no-install-recommends pcmanfm

##INSTALAR FIRMWARES PARA PLACASWIFI
apt install -y firmware-linux-free


##INSTALAR POLICYKIT (NORMALMENTE SE INSTALA CON OTROS PAQUETES, PAQUETE: policykit-1) 
##PERO HAY QUE AGREGAR LA VISUALIZACIÓN DE PKEXEC: lxpolkit
##DEBE AGREGARSE SU EJECUCION EN EL SCRIPT STARTUP de ICEWM.
##POR LA FALTA DE GKSU PARA EJECUTAR CON CREDENCIALES DE ADMINISTRADOR EN ENTORNOS GRÁFICOS
##POR EJEMPLO EL PAQUETE lightdm-gtk-greeter-settings-pkexec
apt install -y libunique-1.0-0 lxpolkit lxsession-data

##INSTALAR UN GESTOR DE INICIO LIGHTDM ES LIVIANO Y CONFIGURABLE
apt --no-install-recommends install -y lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

##CONFIGURACIÓN LIGHTDM
cp -rf ./etc-conf-files/lightdm /etc/

##INSTALAR PARA PODER INVERNAR
apt --no-install-recommends install -y acpi-support
apt --no-install-recommends install -y acpid
apt --no-install-recommends install -y hibernate

##INSTALAR NETWORK MANAGER
apt install -y network-manager network-manager-gnome wireless-tools wpasupplicant network-manager-config-connectivity-debian
cp -f ./etc-conf-files/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
#systemctl restart network-manager

##PARA USAR VPN pptp y openvpn OPCIONAL:
#apt install -y network-manager-pptp network-manager-pptp-gnome network-manager-openvpn

##archivos de escritorio:
apt install -y desktop-file-utils 
apt install -y libdbus-glib-1-2 
apt install -y libnotify4

#gnome theme para tema oscuro en apps gtk como geany Awaita
apt install -y gnome-themes-standard 
apt install -y gnome-themes-extra

##AUTOMONTAJE
apt install -y dosfstools 
apt install -y eject
apt install -y exfat-fuse 
apt install -y fuse 
apt install -y gdisk 
apt install -y gvfs 
apt install -y gvfs-common 
apt install -y gvfs-daemons 
apt install -y gvfs-libs 
apt install -y libaacs0 
apt install -y libatasmart4 
apt install -y libbdplus0 
apt install -y libblockdev-crypto2 
apt install -y libblockdev-fs 
apt install -y libblockdev-loop2 
apt install -y libblockdev-part-err2 
apt install -y libblockdev-part 
apt install -y libblockdev-swap2 
apt install -y libblockdev-utils2 
apt install -y libblockdev2 
apt install -y libbluray2 
apt install -y libgck-1-0 
apt install -y libgcr-base-3-1 
apt install -y libgpgme11 
apt install -y libnspr4 
apt install -y libnss3 
apt install -y libntfs-3g883 
apt install -y libparted-fs-resize0 
apt install -y libparted2 
apt install -y libpolkit-agent-1-0 
apt install -y libpolkit-backend-1-0 
apt install -y libpolkit-gobject-1-0 
apt install -y libsecret-1-0 
apt install -y libsecret-common 
apt install -y libudisks2-0 
apt install -y libvolume-key1 
apt install -y ntfs-3g 
apt install -y parted 
apt install -y policykit-1 
apt install -y udisks2 
apt install -y libayatana-appindicator3-1 
apt install -y libayatana-ido3-0.4-0 
apt install -y libayatana-indicator3-7 
apt install -y libdbusmenu-glib4 
apt install -y libdbusmenu-gtk3-4 
apt install -y libnma0 
apt install -y network-manager-gnome 
apt install -y policykit-1-gnome 
apt install -y network-manager-config-connectivity-debian

##SONIDO, NO USAR PULSEAUDIO:
apt install -y alsa-utils

##VOLUMENICON-ALSA para tener un icono de volumen:
apt install -y volumeicon-alsa

##PARA ADMINISTRAR EL PROYECTOR:
apt install -y arandr

#PARA GESTIONAR COLORES GTK Y TEMAS:
apt install -y lxappearance

#ajuste de brillos
apt install -y xbacklight 

##TERMINAL UTILS
##PARA RENOMBRAR MASIVAMENTE	
##se usa así rename -f 's/.png/.xpm/' *.png
apt install -y rename

##locate, se usa para buscar facilmente, primero se debe actualizar la base de datos de búsqueda con
##el comando updatedb, ejecutar updatedb como root
apt install -y locate

######################################################################################################################
######################################################################################################################
##APLICACIONES
##Instalar todo para descomprimir:
	##Engrampa en vez de Xarchiver:
apt --no-install-recommends install -y engrampa
apt --no-install-recommends install  -y arj lhasa liblz4-tool lrzip lzip lzop ncompress rar unar zip zstd unrar p7zip p7zip-full

##PARA HACER CAPTURAS:
apt --no-install-recommends install -y flameshot

##NAVEGADOR WEB
apt install --no-install-recommends -y firefox-esr firefox-esr-l10n-es-ar

##GIT
apt install -y git

##UNA CALCULADORA:
apt install -y galculator
    
##MOC reproductor de música:
apt install -y moc

##PARA VER IMAGENES EN CONSOLA
apt install -y feh libgif7 libimlib2 yudit-common

##PARA VER VIDEOS:
apt --no-install-recommends install -y mpv

##LECTOR DE PDF:
apt --no-install-recommends install -y zathura

##CREADOR DE VIDEOTUTORIALES:
apt install -y vokoscreen

##PARA GESTIONAR PASSWORDS OPCIONAL
apt --no-install-recommends install -y keepassx

##PARA REDIMENSIONAR IMAGENES:
apt --no-install-recommends install -y imagemagick

##PARA CREAR DIAGRAMAS
apt install -y dia dia-rib-network dia-shapes dia2code

##HTTP-OPTION-1 APACHE Y PHP
#apt install -y php php-mbstring php-xml

##DB-OPTION-2 MARIADB
#apt install -y mariadb-server mariadb-client

##DEVELOP-OPTION-3 ADMINER
#apt install -y adminer

##DEVELOP-OPTION-4 SQLITE-BROWSER
apt install -y sqlitebrowser

##THE GEANY IDE
apt install -y geany geany-plugins libvte-2.91-0

################################INSTALAR PAQUETES DEB:######################################

##Iconos de temas para w98
apt install -y ./installers/se98-icon-theme/se98-icon-theme-git_0.2.13-1_all.deb
 
