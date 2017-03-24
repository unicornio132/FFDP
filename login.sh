#!/bin/bash
USUARIO=vagrant
SENHA=vagrant
SAIR=nao
while [ $SAIR != "SAI" ]; do
clear
echo
echo Debian GNU/Linux 8 jessie tty1
echo
QNT=1
while (( $QNT <= 5 )); do
 echo -n "jessie login: "
 read LOGIN
 echo -n "Password: "
 read -s PASSW
 echo
 if [ $LOGIN == $USUARIO ]; then
   if [ $PASSW == $SENHA ]; then
	SAIR="SAI"
	QNT=6
   else
	sleep 3
	echo
	echo "Login incorrect"
   fi
 else
   sleep 3
   echo
   echo "Login incorrect"
 fi
let QNT=($QNT+1)
done
done




