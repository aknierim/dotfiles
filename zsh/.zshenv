export EDITOR=nvim
export BROWSER=firefox
export max_print_line=2147483647

export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

export PATH="$HOME/.local/texlive/2022/bin/x86_64-linux:$PATH"
export MANPATH="$HOME/.local/texlive/2022/texmf-dist/doc/man:$MANPATH"
export INFOPATH="$HOME/.local/texlive/2022/texmf-dist/doc/man:$INFOPATH"

export GEM_HOME="$(ruby -e 'puts Gem.user_dir')"
export PATH="$PATH:$GEM_HOME/bin"

export ZSH_AUTOSUGGEST_STRATEGY=(
    completion
    history
)

export ZELLIJ_RUNNER_LAYOUTS_DIR="$HOME/.config/zellij/layouts"
export ZELLIJ_RUNNER_BANNERS_DIR="$HOME/.config/zellij/banners"

# directory with the projects, releative to the HOME dir
export ZELLIJ_RUNNER_ROOT_DIR="work"

# traverse dirs 3 level max from ZELLIJ_RUNNER_ROOT_DIR
export ZELLIJ_RUNNER_MAX_DIRS_DEPTH=3
