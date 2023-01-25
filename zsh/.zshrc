# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Theme for zsh
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins for zsh
plugins=(
	z
	git
	zsh-autosuggestions
	zsh-syntax-highlighting
	fancy-ctrl-z
	alias-finder
)

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('$HOME/.local/conda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$HOME/.local/conda/etc/profile.d/conda.sh" ]; then
        . "$HOME/.local/conda/etc/profile.d/conda.sh"
    else
        export PATH="$HOME/.local/conda/bin:$PATH"
    fi
fi
unset __conda_setup

if [ -f "$HOME/.local/conda/etc/profile.d/mamba.sh" ]; then
    . "$HOME/.local/conda/etc/profile.d/mamba.sh"
fi
# <<< conda initialize <<<

