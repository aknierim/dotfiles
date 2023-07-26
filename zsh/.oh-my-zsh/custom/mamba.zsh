function mambas() {
  environments=$(eval mamba env list | cut -d" " -f1 | cut -d"#" -f1)
  items=("base" "deactivate" ${environments[@]:7})
  config=$(printf "%s\n" "${items[@]}" | fzf --prompt="Mamba Config  " --height=~50% --layout=reverse --border --exit-0)
  if [[ -z $config ]]; then
    echo "Nothing selected"
    return 0
  elif [[ $config == "deactivate" ]]; then
    mamba deactivate
  else
    mamba activate $config
  fi
}

bindkey -s ^q "mambas\n"
