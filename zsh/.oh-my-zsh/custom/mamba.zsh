function mambas() {
  environments=$(eval mamba env list | rg -v '(^[\#])|^(base)\b' | cut -d ' ' -f 1)
  items=("base" "deactivate" $environments)

  # config for fuzzy finder selection window
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt="🐍 Mamba Environment  " --height=~50% --info=inline --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "deactivate" ]]; then
    mamba deactivate
  else
    mamba activate $config
  fi
}

bindkey -s ^q "mambas\n" # ctrl + q as shortcut keybinding
