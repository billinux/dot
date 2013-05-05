# http://lfs.traduc.org/view/blfs-5.1-fr/postlfs/profile.html

# /etc/profile.d/dircolors.sh

# Ce script utilise les fichiers ~/.dircolors et /etc/dircolors pour contrôler les couleurs des noms de fichiers
# dans une liste du répertoire. Ils contrôlent la sortie colorisée de choses comme ls --color.
# L'explication sur l'initialisation de ces fichiers se trouve à la fin de cette section.

# cat > /etc/profile.d/dircolors.sh << "EOF"

#  Configuration pour le support de la couleur dans /bin/ls, l'alias est
#+ dans /etc/bashrc.
if [ -f "/etc/dircolors" ] ; then
        eval $(dircolors -b /etc/dircolors)

        if [ -f "$HOME/.dircolors" ] ; then
                eval $(dircolors -b $HOME/.dircolors)
        fi
fi
alias ls='ls --color=auto'
# EOF
