#! /usr/bin/env sh
if [ -f ~/.emacs.d/init.el.bak ]
then
    echo "Reverting ~/.emacs.d/init.el to original version ~/.emacs.d/init.el.bak"
    mv ~/.emacs.d/init.el.bak ~/.emacs.d/init.el
else
    echo "Can't install! Could not find ~/.emacs.d/init.el.bak"
    exit 1
fi

