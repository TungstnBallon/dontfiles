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
export DOTS=$(realpath ~/dontfiles)

#load custom aliases
if [[ -e $DOTS/.zshalias ]]; then
  source $DOTS/.zshalias
fi


#load antigen
if [[ -e $DOTS/.antigenrc ]]; then
    source /usr/share/zsh/share/antigen.zsh
    antigen init $DOTS/.antigenrc
fi

#load additional zsh-plugins
if [[ -e $DOTS/.zshplug ]]; then
    source $DOTS/.zshplug
fi

#set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"
