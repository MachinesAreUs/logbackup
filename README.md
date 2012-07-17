### Uso básico

    > logbackup_issemym.bat

* Por default, la herramienta genera un log llamado `.\LogBackup.log`.
* Las unidades y sus direcciones deben configurarse en logbackup_issemym.rb
  Agregando entradas al diccionario con el que se inicia la aplicación:

     lb = LogBackup.new ({
       :SitioA   => '192.168.0.1',
       :SitioB => '192.168.0.2'
     })

### Instalación Prerequisitos

1. Instalar ruby (instalador en `\\192.168.137.101\Todos\Utilidades\Ruby`)
2. Instalar las gemas necesarias

    > gem install fileutils
    > gem install activesupport


