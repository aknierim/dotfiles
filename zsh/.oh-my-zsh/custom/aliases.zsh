# config files
alias zshconfig="nvim ~/.zshrc"
alias p10kconfig="nvim ~/.p10k.zsh"
alias aliasconfig="nvim ~/.oh-my-zsh/custom/aliases.zsh" # <- this file

# cd aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../..'

# some ls/exa aliases
alias ll='ls -CFAlh'
alias la='ls -CFA'
alias l='ls -CF'
alias le="eza -aFl --icons --group-directories-first"
alias lt="eza -aFl --icons --group-directories-first --tree --level=2"

# mamba/conda aliases
alias cta='mamba activate cta-dev'
alias fkp='mamba activate fkp22-23'
alias aoc='mamba activate AdventOfCode'

# other mamba/conda aliases
alias mambatoyml='mamba env export --from-history >'

# jupyter lab
alias jupyterlab='jupyter lab --no-browser'

# ssh
sshlab() {
  local port="$(2:-8894}"
  ssh -NfL localhost:"$port":localhost:"$port" "$3@$1"
  firefox localhost:"$port"
}

# make
alias remake='make clean && make'

# count files
alias count='find . -type f | wc -l'

# copy with progress bar
alias cpv='rsync -ah --info=progress2'

# yazi
bindkey -s ^e "yazi\n" # ctrl+e as shortcut for yazi

## Colorize the grep command output
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# git
alias gits="git status -s"

# vim
alias vim=nvim
alias vi=nvim

# texlive
alias updatetl="tlmgr update --self --all --reinstall-forcibly-removed"

# open current dir in file explorer
alias fe="xdg-open ."
