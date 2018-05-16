#!/bin/sh

#Esse script sincroniza os repositorios git localizados em $HOME/Documentos/GitHub
XDG_DOCUMENTS_DIR="${HOME}/Documents"
if [ -f "${XDG_CONFIG_HOME:-${HOME}/.config}/user-dirs.dirs" ]; then
  . "${XDG_CONFIG_HOME:-${HOME}/.config}/user-dirs.dirs"
fi
cd $XDG_DOCUMENTS_DIR
cd 'GitHub'
for i in $(ls) 
do
	echo $i
	cd $(pwd)"/$i"
	git pull
	cd ..
done

