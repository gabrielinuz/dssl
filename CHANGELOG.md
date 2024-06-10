##Resuelto:

#Colores de fondo de icewm y desactivar wallpaper.
-editar el archivo de configuración 
.icewm/themes/NanoBlue/default.theme
-cambiar la propiedad DesktopBackgrounColor por negro:
    DesktopBackgrounColor=rgb:"00/00/00"
-cambiar la propiedad DesktopBackgrounImage por la imagen deseada
    #DesktopBackgrounImage="eos.jpg"
    DesktopBackgroundImage="default_background.jpeg"
    
#Voy a desactivar pcmanfm para la gestión de fondo de escritorio
-porque son Mb de ram consumidos por muy poco
en el archivo de aplicaciones al inicio ./icewm/startup comentar la siguiente línea.
#pcmanfm --desktop&

#No se copia correctamente el fondo de escritorio:
-editar .config/pcmanfm/desktop-items-0.conf, ya que lo busca en el home:
wallpaper=./.default_background.jpeg 

#PCMANFM configurar para que no aparezcan archivos ocultos por defecto:
./config/pcmanfm/default/pcmanfm.config
show_hidden=0

#Borrar los archivos o directorios ocultos por si existen, usar if en bash
if [ -d "./.icewm" ];
	then rm -r ./.icewm;
fi

#Configurar para que se ajuste el tema gtk y se instale el tema oscuro adwaita-dark
#No se copió la configuración de tema GTK, solucionado:
##CONFIGURACIÓN GTK3.0
cp -rf ./home-conf-files/config/gtk-3.0 ~/.config/

##CONFIGURACIÓN Midnight Commander
cp -rf ./home-conf-files/config/mc ~/.config/

##No se copió la configuración de midgnight commander (ver como copiar el tema, me falta eso)
el tema se creó y se nombró dssl.ini y se copia en 
/usr/share/mc/skins/

##Corrección de repositorios consejo de Debian.org
La 'distribución' puede ser el nombre en clave de la publicación ( stretch, buster, bullseye, bookworm, sid) o la clase de publicación (oldoldstable, oldstable, stable, testing, unstable) respectivamente. Si quieres seguir una clase de publicación usa el nombre de la clase, si quieres seguir una versión principal Debian usa el nombre en clave. Evita usar stable en tu sources.list ya que provoca sorpresas y sistemas rotos cuando sale la siguiente publicación; actualizar a una publicación nueva debería ser una acción deliberada y cuidadosa, y editar un fichero cada dos años no es una molestia.
