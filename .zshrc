# $Id: .zshrc,v 1.9 2016/01/10 22:30:51 grahn Exp $
# - interactive shell

# Latin1 support
export LESSCHARSET=latin1
export LANG=sv_SE
#export LC_COLLATE C
export LC_MESSAGES=C
export LC_NUMERIC=C
export LC_TIME=C
export LC_MONETARY=C

export PAGER=/usr/bin/less

export CVS_RSH=ssh
export CVSEDITOR=/usr/bin/vi
export RSYNC_RSH=ssh
export GNUTERM=x11
# less gcc bolding, so I can still find my prompt easily
export GCC_COLORS='error=0;31:warning=0;35:note=0;36:caret=0;32:locus=0:quote=01'

alias pd=pushd
alias sx='screen -x'

PROMPT="%B%6F%m:%2~%%%f%b "
#RPROMPT="%B%2c%b"

export HISTSIZE=2000
export HISTFILE=~/.zsh_history
export SAVEHIST=$HISTSIZE
setopt APPEND_HISTORY
setopt HIST_IGNORE_ALL_DUPS

setopt INTERACTIVE_COMMENTS
setopt PUSHD_IGNORE_DUPS
setopt PRINT_EXIT_VALUE
setopt PUSHD_SILENT
setopt NO_PUSHD_TO_HOME
setopt NO_HUP

# zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} r:|[._-]=* r:|=*' 'm:{a-z}={A-Z}' 'm:{a-z}={A-Z}' 'm:{a-z}={A-Z}'
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z} m:[-_]=[_-] r:|[._-]=* r:|=*' 'm:{a-z}={A-Z}'
zstyle :compinstall filename '/home/grahn/.zshrc'

autoload -Uz compinit && compinit
