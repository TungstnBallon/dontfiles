#load antigen
source /usr/share/zsh/share/antigen.zsh
antigen init dontfiles/.antigenrc


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

#load custom aliases
if [[ -e /home/jonas/.zshalias ]]; then
  source /home/jonas/.zshalias
fi