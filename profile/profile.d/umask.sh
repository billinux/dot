# http://lfs.traduc.org/view/blfs-5.1-fr/postlfs/profile.html

# /etc/profile.d/umask.sh

# Initialiser la valeur d'umask est important pour la sécurité.
# Ici, nous désactivons les droits d'écriture du groupe sur les utilisateurs système et
# lorsque nom d'utilisateur et nom de groupe ne sont pas identiques.

# cat > /etc/profile.d/umask.sh << "EOF"
# Par défaut, nous voulons qu'umask soit initialisée.
if [ "$(id -gn)" = "$(id -un)" -a $EUID -gt 99 ] ; then
  umask 002
else
  umask 022
fi
#EOF
