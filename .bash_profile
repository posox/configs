# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.

[[ -f ~/.bashrc ]] && source ~/.bashrc
[[ -f /etc/profile ]] && source /etc/profile

# java
export _JAVA_OPTIONS='-Dawt.useSystemAAFontSettings=lcd -Dswing.aatext=true -Dswing.defaultlaf=com.sun.java.swing.plaf.gtk.GTKLookAndFeel'

# local modules
export PATH=$HOME/.local/bin:$PATH
export PYTHONPATH=$HOME/.local/lib64/python2.7/site-packages:$PYTHONPATH
