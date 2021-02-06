# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source ~/.antigen/antigen.zsh

#Load the oh-my-zsh'a library.
antigen use oh-my-zsh


# Example aliases
alias zshconfig="vim ~/.zshrc"
alias ohmyzsh="vim ~/.oh-my-zsh"


# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle command-not-found
        #aliases
antigen bundles <<ALIASBUNDLE
        alias-finder                            #type command to find associated alias
        common-aliases
        archlinux                               #aliases for arch
        MichaelAquilina/zsh-you-should-use      #suggests aliases after erxecuting command
        sudo                                    #press escape twice to execute command wirh sudo in front
ALIASBUNDLE
antigen bundles <<COLORBUNDLE
        colored-man-pages
        colorize
        zsh-users/zsh-syntax-highlighting
COLORBUNDLE
antigen bundles <<DEVBUNDLE
        git
        pip
DEVBUNDLE
antigen bundles <<TERMBUNDLE
        zsh-users/zsh-autosuggestions
        autojump
        psprint/zsh-navigation-tools
TERMBUNDLE

# Load the theme.
antigen theme romkatv/powerlevel10k 

# Tell Antigen that you're done.
antigen apply

#widgets for autosuggestion
source /home/jonas/.antigen/bundles/zsh-users/zsh-autosuggestions/zsh-autosuggestions.zsh
#CTRL+SPACE accpets suggetion
bindkey '^ ' autosuggest-accept

#set vim as editor
export EDITOR=/usr/bin/vim

#add custom aliases
source ~/.zshalias

### ZNT's installer added snippet ###
	fpath=( "$fpath[@]" "$HOME/.config/znt/zsh-navigation-tools" )
	autoload n-aliases n-cd n-env n-functions n-history n-kill n-list n-list-draw n-list-input n-options n-panelize n-help
	autoload znt-usetty-wrapper znt-history-widget znt-cd-widget znt-kill-widget
	alias naliases=n-aliases ncd=n-cd nenv=n-env nfunctions=n-functions nhistory=n-history
	alias nkill=n-kill noptions=n-options npanelize=n-panelize nhelp=n-help
	zle -N znt-history-widget
	bindkey '^R' znt-history-widget
	setopt AUTO_PUSHD HIST_IGNORE_DUPS PUSHD_IGNORE_DUPS
	zstyle ':completion::complete:n-kill::bits' matcher 'r:|=** l:|=*'
### END ###

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
