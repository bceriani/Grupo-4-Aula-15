# Grupo-4-Aula-15
ISPC 2022 Grupo 4

#Librito 1: Metodologias agiles:
Software (IEEE): parte de un sistema que se puede codificar para ejecutarse en una
computadora como un conjunto de instrucciones. Incluye la documentación asociada
necesaria para comprender, transformar y usar esa solución.


Tema destacado 
Manifiesto Agile (Valores)
Fuente Imagen: https://www.lynnecazaly.com.au/the-visual-agile-manifesto/
● Valorar a los individuos por encima de los procesos.
● El software que funciona por encima de la documentación exhaustiva.
● La colaboración del cliente por encima de la negociación contractual.
● La respuesta al cambio por encima del seguimiento de un plan.


#Librito 2:GITHUB - VSC
Github
Tema mas importante
Mediante la plataforma de social coding GitHub puedes publicar repositorios de código para que se alojen en un sistema de control de versiones Git. 

Este sistema te ofrece la posibilidad de colaborar en otros proyectos y publicar los tuyos propios. 

La plataforma es de código abierto por defecto, por lo que cualquier persona puede utilizar tu código y tú también puedes ver el código de otros proyectos
![image](https://user-images.githubusercontent.com/106833817/177074472-21bcb7dc-f4c6-4b91-bf86-ec16f959c6dd.png)

![image](https://user-images.githubusercontent.com/106833817/177074494-24da22b6-97ad-432b-b191-a513d1b2df35.png)

Repositorio Git en Visual Studio Code con cuenta Github

Tema relevante es como crear cuenta Git: Crear cuenta en Github

Accede a https://github.com/ y crea una cuenta. 

Selecciona el plan personal gratuito con repositorio público. No te olvides de terminar la verificación mediante correo electrónico. 

Crea un proyecto en la opción “Create a Proyect”. Incluye el nombre de tu repositorio y selecciona la opción “Create repository”. 

No cierres esta ventana porque vas a necesitar algunos de los datos que ahí se muestran para clonar el repositorio mediante URL. 
![image](https://user-images.githubusercontent.com/95329694/177075073-a9de1997-5c90-4c3e-b957-3953f8a302e3.png)

# Librito 3 Git GitHub:
Tema mas importante que es Git: Git es un sistema de control de versiones (VCS) distribuido gratuito y de código abierto diseñado para manejar desde proyectos pequeños a muy grandes, con velocidad y eficiencia.
Nos permite conocer los cambios realizados en los programas o software que vamos desarrollando con el paso del tiempo. Administra las distintas versiones
Nace como necesidad de control para el Kernel de Linux. 
Coordinar el trabajo entre los diferentes desarrolladores del equipo.
Repositorios Locales y Remotos.
![image](https://user-images.githubusercontent.com/95329694/177075575-55bf437c-6a09-4b6b-88ac-137114b1123a.png)

Se adjunta clase explicativa dictada 06/06
https://drive.google.com/file/d/1Po_N5dod0nZSfgU7XX34OwyHUd3wv1fl/view

# Librito 4 GIT:
Tema mas importante obtener ayuda por consola:
¿Cómo obtener ayuda?
Si alguna vez necesitas ayuda usando Git, existen tres formas de ver la página del
manual (manpage) para cualquier comando de Git:
$ git help <verb>
$ git <verb> --help
$ man git-<verb>
Por ejemplo, puedes ver la página del manual para el comando config ejecutando
$ git help config
Estos comandos son muy útiles porque puedes acceder a ellos desde cualquier sitio,
incluso sin conexión.
  
TEMAS DESTACADOS
  
  Git tiene integridad
Todo en Git es verificado mediante una suma de comprobación (checksum en inglés) antes de ser almacenado, y es identificado a partir de ese momento mediante dicha
suma. Esto significa que es imposible cambiar los contenidos de cualquier archivo o directorio sin que Git lo sepa. Esta funcionalidad está integrada en Git al más bajo nivel y es parte integral de su filosofía. No puedes perder información durante su transmisión o sufrir corrupción de archivos sin que Git sea capaz de detectarlo. El mecanismo que usa Git para generar esta suma de comprobación se conoce como hash SHA-1. Se trata de una cadena de 40 caracteres hexadecimales (0-9 y a-f), y se calcula con base en los contenidos del archivo o estructura del directorio en Git. Un hash SHA-1 se ve de la siguiente forma: 24b9da6552252987aa493b52f8696cd6d3b00373 Verás estos valores hash por todos lados en Git, porque son usados con mucha frecuencia. De hecho, Git guarda todo no por nombre de archivo, sino por el valor hash de sus contenidos. generalmente solo añade información Cuando realizas acciones en Git, casi todas ellas sólo añaden información a la base de datos de Git. Es muy difícil conseguir que el sistema haga algo que no se pueda enmendar, o que de algún modo borre información. Como en cualquier VCS, puedes perder o estropear cambios que no has confirmado todavía. Pero después de confirmar una copia instantánea en Git es muy difícil perderla, especialmente si envías tu base de datos a otro repositorio con regularidad.
Esto hace que usar Git sea un placer, porque sabemos que podemos experimentar sin peligro de estropear gravemente las cosas.
Los Tres Estados
Ahora presta atención. Esto es lo más importante que debes recordar acerca de Git si
quieres que el resto de tu proceso de aprendizaje prosiga sin problemas. Git tiene tres
estados principales en los que se pueden encontrar tus archivos: confirmado
(committed), modificado (modified), y preparado (staged). Confirmado: significa que

los datos están almacenados de manera segura en tu base de datos local. Modificado:
significa que has modificado el archivo pero todavía no lo has confirmado a tu base de
datos. Preparado: significa que has marcado un archivo modificado en su versión
actual para que vaya en tu próxima confirmación.
Esto nos lleva a las tres secciones principales de un proyecto de Git: El directorio de Git
(Git directory), el directorio de trabajo (working directory), y el área de preparación
(staging area).

El directorio de Git es donde se almacenan los metadatos y la base de datos de objetos
para tu proyecto. Es la parte más importante de Git, y es lo que se copia cuando se
clona un repositorio desde otra computadora.
El directorio de trabajo es una copia de una versión del proyecto. Estos archivos se
sacan de la base de datos comprimida en el directorio de Git, y se colocan en disco
para que los puedas usar o modificar.
El área de preparación es un archivo, generalmente contenido en tu directorio de Git,
que almacena información acerca de lo que va a ir en tu próxima confirmación. A veces
se le denomina índice (“index”), pero se está convirtiendo en estándar el referirse a
ella como el área de preparación.
El flujo de trabajo básico en Git es algo así:
● Modificas una serie de archivos en tu directorio de trabajo.
● Preparas los archivos, añadiéndolos a tu área de preparación.
● Confirmas los cambios, lo que toma los archivos tal y como están en el área de
preparación y almacena esa copia instantánea de manera permanente en tu
directorio de Git.
Si una versión concreta de un archivo está en el directorio de Git, se considera
confirmada (committed). Si ha sufrido cambios desde que se obtuvo del repositorio,
pero ha sido añadida al área de preparación, está preparada (staged). Y si ha sufrido
cambios desde que se obtuvo del repositorio, pero no se ha preparado, está
modificada (modified).
  
