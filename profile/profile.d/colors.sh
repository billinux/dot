# http://news-posts.aplawrence.com/345.html

COLORS=/etc/DIR_COLORS
[ -e "/etc/DIR_COLORS.$TERM" ] && COLORS="/etc/DIR_COLORS.$TERM"
[ -e "$HOME/.dircolors" ] && COLORS="$HOME/.dircolors"
[ -e "$HOME/.dir_colors" ] && COLORS="$HOME/.dir_colors"
[ -e "$HOME/.dircolors.$TERM" ] && COLORS="$HOME/.dircolors.$TERM"
[ -e "$HOME/.dir_colors.$TERM" ] && COLORS="$HOME/.dir_colors.$TERM"
[ -e "$COLORS" ] || return

eval `dircolors --sh "$COLORS" 2>/dev/null`
[ -z "$LS_COLORS" ] && return
