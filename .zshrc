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

#load custom aliases
if [[ -e /home/jonas/.zshalias ]]; then
  source /home/jonas/.zshalias
fi


#load antigen
if [[ -e /home/jonas/dontfiles/.antigenrc ]]; then
    source /usr/share/zsh/share/antigen.zsh
    antigen init /home/jonas/dontfiles/.antigenrc
fi

#load additional zsh-plugins
if [[ -e /home/jonas/dontfiles/.zshplug ]]; then
    source /home/jonas/dontfiles/.zshplug
fi

#set default editor to vim
export VISUAL=vim
export EDITOR="$VISUAL"
