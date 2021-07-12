#!/usr/bin/env bash

#/scripts/ip.sh
#-----------HEADER-------------------------------------------------------------|
# AUTOR             : Matheus Martins - 3mhenrique@gmail.com
# HOMEPAGE          : https://github.com/mateuscomh
# DATA-DE-CRIAÇÃO   : 03/05/2021
# PROGRAMA          : Shell-Base
# VERSÃO            : 1.0.0
# LICENÇA           : GPL3
# PEQUENA-DESCRIÇÃO : Script para i3wmm pensado no status bar, captura ip 
#                     ip externo e escreve em arquivo podendo ser utlizado em 
#                     crontab ou inicializacao.
# CHANGELOG : 
#
#------------------------------------------------------------------------------|

sleep 10

caminho="/scripts/Output/meuip"
ping -c 1 8.8.8.8 

if [ "$?" -ne "0" ]; then
	echo 0.0.0.0 > $caminho
else
	echo $(curl -s ipinfo.io/ip) > $caminho 
fi
exit 0
