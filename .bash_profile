# /etc/skel/.bash_profile

# This file is sourced by bash for login shells.  The following line
# runs your .bashrc and is recommended by the bash info pages.
[[ -f ~/.bashrc ]] && . ~/.bashrc

export TERM=xterm-256color
export PATH=$PATH:/home/serg/.local/bin
source /etc/profile

export PIP_DOWNLOAD_CACHE=$HOME/.pip_download_cache
