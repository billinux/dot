# http://lfs.traduc.org/view/blfs-5.1-fr/postlfs/profile.html

# /etc/profile.d/readline.sh

# Ce script initialise le fichier de configuration par défaut inputrc.
# Si l'utilisateur n'a pas de configurations individuelles, il utilise le fichier global.

# cat > /etc/profile.d/readline.sh << "EOF"

# Configuration de la variable d'environnement.
if [ -z "$INPUTRC" -a ! -f "$HOME/.inputrc" ] ; then
        INPUTRC=/etc/inputrc
fi
export INPUTRC
#EOF
