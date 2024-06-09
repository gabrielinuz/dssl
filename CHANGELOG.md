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
