XDG_DOCUMENTS_DIR="${HOME}/Documents"
if [ -f "${XDG_CONFIG_HOME:-${HOME}/.config}/user-dirs.dirs" ]; then
  . "${XDG_CONFIG_HOME:-${HOME}/.config}/user-dirs.dirs"
fi
dirExec=$(pwd)
cd $XDG_DOCUMENTS_DIR
if [ ! -d "Scripts" ]; then
	mkdir Scripts
fi
cp $dirExec/git_sync.sh ./Scripts
sed -e "s,{HOME/DOC},$XDG_DOCUMENTS_DIR,g" $dirExec/git_deskSync.desktop.template > $dirExec/git_deskSync.desktop
cp $dirExec/git_deskSync.desktop ~/.config/autostart/git_deskSync.desktop
chmod u+x ~/.config/autostart/git_deskSync.desktop
rm $dirExec/git_deskSync.desktop

