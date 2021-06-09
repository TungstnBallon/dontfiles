# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

#------------------------Custom Changes-------------------

#path to dontfiles
export DOTS=$(realpath -e ~/dontfiles)

#load antigen
if [[ -e $DOTS/.antigenrc ]]; then
    source /usr/share/zsh/share/antigen.zsh
    antigen init $DOTS/.antigenrc
fi
#load additional zsh-plugins
if [[ -e $DOTS/.zshplug ]]; then
    source $DOTS/.zshplug
fi

#load custom aliases
if [[ -e $DOTS/.zshalias ]]; then
  source $DOTS/.zshalias
fi

#if logged in as root change theme which makes this more noticable
if [[ $USER = "root" && -e $DOTS/p10k-root.zsh ]]; then
    source $DOTS/.p10k-root.zsh
fi

#set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
