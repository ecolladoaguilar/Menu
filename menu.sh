#!/bin/bash

while true
do

echo este es el menu de inciio de aplicacion
echo pulse "0" para salir del menu
echo pulse "1" para crear un directorio
echo pulse "2" para añadir permisos
echo pulse "3" para añadir y eliminar un usuario/grupo
echo "##############################################"
read respuesta


#crear un directorio
echo usted pulso $respuesta
if test $respuesta -eq 1
then
echo cual es el nombre
read directorio
mkdir $directorio


#añadir permisos
elif test $respueta -eq 2
then

echo dame el directorio del fichero "ejemplo.. /home/usuario/archivo"
read fichero

if test -f fichero
then
echo pulsa "1" para permisos de escritura
echo pulsa "2" para permisos de lectura
echo pulsa "3" para permisos de ejecución

read respuestaPermi

if test $respuestaPermi -eq 1
then
chmod ugo+w $fichero

if test $respuestaPermi -eq 2
then
chmod ugo+r $fichero

if test $respuestaPermi -eq 3
then
chmod ugo+x $fichero

fi
fi


#añadir usuarios
elif test $respuesta -eq 5
echo pulsa "1" para eliminar un usuario
echo pulsa "2" para crear un usuario
echo pulsa "3" para crear/eliminar un usuario

read resp
	if test $resp -eq 2
		then 
		echo nombre de usuario
		read nombre
	ZSZ=`cat /etc/passwd | cut -f1 -d":" | grep -x $Nombre | wc -l`
	if test $ZSZ -eq 0
		then
		NumeroUsuario = ``cat /etc/passwd | cut -f3 -d":" | sort -n | tail -2 | head -1`
	Nusuario = `expr $NumeroUsuario + 1`>/home/alumno/datousuario.txt
	echo $Nombre:x:$Nusuario:$Nusuario:$Nombre:/home/$Nombre:/bin/bash >> /etc/passwd
		else 
		echo "el usuario ya existe"
	fi

#borrar usuarios
elif test $resp -eq 1
then
echo dame el nombre de usuario
read Nombre
	ZSZ= `cat /etc/passwd | cut -f1 -d":" | grep -x $Nombre | wc- l`
	if test $ZSZ -eq 0
	then 
	echo El usuario no existe
		else 
		sudo sed `/$Nombre/d /etc/passwd>/etc/passwd`
	fi

elif test $resp -eq 3
then
echo Pulse "1" para crear grupo

read Grupo
	if test $grupo -eq 1
		then 
		echo nombre del grupo
	echo
		read nombre grupo
	ZSZ = `cat /etc/group | cut -f1 -d":" | grep -x $NombreGrupo | wc -l`
	if test $ZSZ -eq 0
	then
		NumeroGrupo=`cat /etc/group | cut -f3 -d":" | sort -n | tail -2 | head -1`
		NuGrupo=`expr $NumeroGrupo +1`>/home/alumno/DatosGrupo.txt
		echo $NombreGrupo:x:$NuGrupo: >>/etc/group
	else
		echo ya existe el grupo
	fi

fi

#salir
elif test $respuesta -eq 0
then
exist

fi
done





