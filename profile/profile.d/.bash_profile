# ~/.bash_profile
# Voici la base de ~/.bash_profile.
# Si vous voulez que chaque nouvel utilisateur ait ce fichier automatiquement,
# modifiez simplement la sortie de la commande par /etc/skel/.bash_profile
# et vérifiez les droits après le lancement de la commande.
# Vous pouvez ensuite copier /etc/skel/.bash_profile dans les répertoires personnels des utilisateurs déjà existants,
# ceci incluant root, et configurer les utilisateur et groupe de façon appropriée.

# cat > ~/.bash_profile << "EOF"

# Début de ~/.bash_profile
# Écrit pour Beyond Linux From Scratch
# par James Robertson <jameswrobertson@earthlink.net>
# mis à jour par Bruce Dubbs <bdubbs@linuxfromscratch.org>

# Variables d'environnement personnelles et programmes de lancement.

# Les alias personnels et les fonctions devraient aller dans ~/.bashrc.
# Les variables d'environnement système et les programmes de lancement sont
# dans /etc/profile.
# Les alias et les fonctions système sont dans /etc/bashrc.

append () {
  # Tout d'abord, supprimez le répertoire
  local IFS=':'
  local NEWPATH
  for DIR in $PATH; do
     if [ "$DIR" != "$1" ]; then
       NEWPATH = ${NEWPATH:+$NEWPATH:}$DIR
     fi
  done

  # Puis, ajoutez le répertoire
  export PATH=$NEWPATH:$1
}

if [ -f "$HOME/.bashrc" ] ; then
        source $HOME/.bashrc
fi

if [ -d "$HOME/bin" ] ; then
  append $HOME/bin
fi

unset append

# Fin de ~/.bash_profile
# EOF
