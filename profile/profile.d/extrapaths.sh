# http://lfs.traduc.org/view/blfs-5.1-fr/postlfs/profile.html

# /etc/profile.d/extrapaths.sh

# Ce script ajoute quelques chemins utiles aux variables d'environnement PATH et PKG_CONFIG_PATH.
# Si vous voulez, vous pouvez décommenter la dernière section pour placer un point à la fin de votre chemin.
# Ceci permettra l'exécution d'applications du répertoire courant sans avoir à spécifier un ./.
# Néanmoins, vous êtes prévenu que ceci est généralement considéré comme un problème de sécurité.


# cat > /etc/profile.d/extrapaths.sh << "EOF"

if [ -d /usr/local/lib/pkgconfig ] ; then
        pathappend /usr/local/lib/pkgconfig PKG_CONFIG_PATH
fi
if [ -d /usr/local/bin ]; then
        pathprepend /usr/local/bin
fi
if [ -d /usr/local/sbin -a $EUID -eq 0 ]; then
        pathprepend /usr/local/sbin
fi
for directory in $(find /opt/*/lib/pkgconfig -type d); do
        pathappend $directory PKG_CONFIG_PATH
done
for directory in $(find /opt/*/bin -type d); do
        pathappend $directory
done
if [ -d ~/bin ]; then
        pathprepend ~/bin
fi
#if [ $EUID -gt 99 ]; then
#        pathappend .
#fi
#EOF
