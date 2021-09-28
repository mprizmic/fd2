
lun 27 sep 2021 19:30:00 -03

si aplico lo de los stash estoy para hacer un commit y volver todo a como estaba pero andando, por que no toque lo de las autoridades.
Si anda local luego hay que pasarlo a la nube

luego empiezo a aplicar lo que esta en los stash pero no anda

parado en la rama nueva traigo de rel5 los archivos de a uno y llego hasta tag v6.0 de rel5. no commiteo
no traje autoridadrepository ni listado_rector
en el medio queda la rama combo_de_inspector y referente_siol

creo local la rama agregar_rama y empiezo a aplicarle los parches 
*******************************************
en la nube volvi para atras hasta aa3d el repositorio y rehice la cache y arrancó en la nube el lsitao de establecimientos

subi a gitlab y lo baje en la nube
************************************************

no andaba el listado de establecimeintos en el local
siempre trabajando sobre master
volvi con un git reset hasta el 2020-10-17 21.29.14 "seguimiento de la inclusion del áea"
aplique con --down el version20210429211844 (saca tabla area y saca establecimiento.area_id )

adelanté hasta 2021-09-14 17.01.03 "alta de autoridad " y modifique la tabla establecimiento.

adelante hasta "damero 30 establecimientos" y funciona 2020-10-23 13.52.42
el problema está en autoridadrepositiry findrectores
el error esta en 2020-10-17 22.22.41 "continuacion de agregado de areas"

volvi con un git reset hasta el 2020-10-17 21.29.14 "seguimiento de la inclusion del áea" y cree una nueva rama.
Esto es lo que hay que impactar en gitlab para volver a retomar desde aca. Luego la rama quedara para ver si la reconstruyo como parche. 




=====================================
bajar fuentes desde gitlab para todas las ramas

la base esta con los fuentes de gitlab

java 8 instalado

dbeaver instalado en opt

workbench instaldo

corre el sistema

falta debug de netbeans

subir a git una prueba de un parche

git config --global user.email "mprizmic@gmail.com"
git config --global user.name "mprizmic"

en el server fd es producción
en el server fd2.composer.server es el servidor de los fuentes 

con esto apunto al remoto del servidor
git remote add server.origin ssh://10.75.1.251/home/marcelo/proyectos/fd2.composer.server

con esto apunto al remoto al repositorio de github
git remote add origin http://github.com/fd_c.git

configuracion de apache. andando

estan copiados .htaccess pero hay varios

corrido check.php

copiado los vendor de 18.04

bajadas todas las ramas que no son master

esta hecho el restore de la base de datos FD

revisado .gitgnore y local.yml

etc/hostname 
et/hosts
etc/php.ini

instalado netbeans 8.1 en español

el proyecto git rama master está bajado de github

phpmyadmin anda

la idea es publicar on line algo en un servidor gratis tipo heroku

estoy tratando de recrear el ambiente de desarrollo symfony en 14.04
