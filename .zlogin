# $Id: .zlogin,v 1.3 2008-01-02 18:35:57 grahn Exp $

export PATH="${HOME}/bin:${PATH}"

if [ -d /usr/local/share/terminfo ] ; then
  export TERMINFO=/usr/local/share/terminfo
fi

if [ $TTY = "/dev/tty1" ] ; then
    exec startx >&/dev/null
fi
