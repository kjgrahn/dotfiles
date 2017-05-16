# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files for examples

# If running interactively, then:
if [ "$PS1" ]; then

    # enable color support of ls and also add handy aliases

    alias ll='ls -l'

    # set a fancy prompt
    PS1='\u@\h:\w\$ '
fi
