# http://lfs.traduc.org/view/blfs-5.1-fr/postlfs/profile.html


# /etc/profile.d/tinker-term.sh

# Quelques applications ont besoin d'un paramètrage spécifique de TERM pour supporter la couleur.

# cat > /etc/profile.d/tinker-term.sh << "EOF"

# Ceci va améliorer la valeur de TERM pour convaincre certaines applications que
# nous pouvons vraiment afficher de la couleur dans leur fenêtre.

if [ -n "$COLORTERM" ]; then
  export TERM=xterm-256color
fi
 
if [ "$TERM" = "xterm" ]; then
  export TERM=xterm-256color
fi
# EOF
