# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f /etc/profile ]] && . /etc/profile

export PATH=$PATH:/home/serg/.local/bin
