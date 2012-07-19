### Uso básico

<code>> logbackup_mysite.bat</code>

* Por default, la herramienta genera un log llamado `LogBackup.log`.
* Las unidades y sus direcciones deben configurarse en `logbackup_mysite.rb`
  Agregando entradas al diccionario con el que se inicia la aplicación:

<code>
lb = LogBackup.new ({
  :SitioA   => '192.168.0.1',
  :SitioB => '192.168.0.2'
})</code>

### Prerequisitos

1. Instalar ruby (instalador [aquí](http://rubyinstaller.org/))
2. Instalar las gemas necesarias

<code>gem install file-utils -v 0.1.0</code>

<code>gem install activesupport</code>

### Instalación

1. Solamente clona el repo =)

<code>git clone git@github.com:MachinesAreUs/logbackup.git</code>

  
