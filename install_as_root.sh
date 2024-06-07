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

##GRUB con temas:
apt install -y grub2-splashimages
apt install -y plymouth plymouth-label plymouth-themes
cp -f /etc/grub.d/05_debian_theme /etc/default/grub.d
cp -f /etc/grub.d/05_debian_theme /etc/default/grub.d
cp -f ./etc-conf-files/grub /etc/default/grub


#		Editar el archivo /etc/default/grub
#		donde dice: GRUB_CMDLINE_LINUX_DEFAULT="quiet"
#		agregar splash así: GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"
update-grub

    ##COMO USAR PLYMOUTH:
    ##Plymouth is a bootsplash for Linux supporting animations using Direct Rendering Manager and KMS driver. It gets ##packed into the initrd. Besides eye-candy, Plymouth also handles user interaction during boot. Wikipedia

    ##Installation instructions:

    ##    copy YOURTHEME folder to usr/share/plymouth/themes/YOURTHEME

    ##    run in terminal as a root:

    ##    plymouth-set-default-theme YOURTHEME -R

##ICEWM
apt install -y icewm-common libao-common libao4 libglade2-0 libjpeg-turbo-progs libturbojpeg0 xscreensaver xscreensaver-data

##PARA GESTIONAR ESCRITORIO Y COMO EXPLORADOR DE ARCHIVOS PCMANFM CON RECOMENDADOS:	
apt install -y --no-install-recommends pcmanfm

##INSTALAR FIRMWARES PARA PLACASWIFI
apt install -y firmware-linux-nonfree


##INSTALAR POLICYKIT (NORMALMENTE SE INSTALA CON OTROS PAQUETES, PAQUETE: policykit-1) 
##PERO HAY QUE AGREGAR LA VISUALIZACIÓN DE PKEXEC: lxpolkit
##DEBE AGREGARSE SU EJECUCION EN EL SCRIPT STARTUP de ICEWM.
##POR LA FALTA DE GKSU PARA EJECUTAR CON CREDENCIALES DE ADMINISTRADOR EN ENTORNOS GRÁFICOS
##POR EJEMPLO EL PAQUETE lightdm-gtk-greeter-settings-pkexec
apt install -y libunique-1.0-0 lxpolkit lxsession-data

##INSTALAR UN GESTOR DE INICIO LIGHTDM ES LIVIANO Y CONFIGURABLE
apt --no-install-recommends install -y libindicator3-7 liblightdm-gobject-1-0 libxklavier16 lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings

##CONFIGURACIÓN LIGHTDM
cp -rf ./etc-conf-files/lightdm /etc/

##INSTALAR PARA PODER INVERNAR
apt --no-install-recommends install -y hibernate acpi-support acpid

##INSTALAR NETWORK MANAGER
apt install -y network-manager network-manager-gnome wireless-tools wpasupplicant network-manager-config-connectivity-debian
cp -f ./etc-conf-files/NetworkManager.conf /etc/NetworkManager/NetworkManager.conf
systemctl restart network-manager

##PARA USAR VPN pptp y openvpn OPCIONAL:
#apt install -y network-manager-pptp network-manager-pptp-gnome network-manager-openvpn

##archivos de escritorio:
apt install -y desktop-file-utils libdbus-glib-1-2 libnotify4

#gnome theme para tema oscuro en apps gtk como geany
apt install -y gnome-themes-standard

##AUTOMONTAJE
apt install -y dosfstools eject exfat-fuse exfat-utils fuse gdisk gvfs gvfs-common gvfs-daemons gvfs-libs libaacs0 libatasmart4 libbdplus0 libblockdev-crypto2 libblockdev-fs libblockdev-loop2 libblockdev-part-err2 libblockdev-part libblockdev-swap2 libblockdev-utils2 libblockdev2 libbluray2 libgck-1-0 libgcr-base-3-1 libgpgme11 libnspr4 libnss3 libntfs-3g883 libparted-fs-resize0 libparted2 libpolkit-agent-1-0 libpolkit-backend-1-0 libpolkit-gobject-1-0 libsecret-1-0 libsecret-common libudisks2-0 libvolume-key1 ntfs-3g parted policykit-1 udisks2 libayatana-appindicator3-1 libayatana-ido3-0.4-0 libayatana-indicator3-7 libdbusmenu-glib4 libdbusmenu-gtk3-4 libnma0 network-manager-gnome policykit-1-gnome network-manager-config-connectivity-debian

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

##PARA RENOMBRAR MASIVAMENTE	
##se usa así rename -f 's/.png/.xpm/' *.png
apt install -y rename

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
 
