# k = kubectl
if declare -F _complete_alias >/dev/null; then
  complete -F _complete_alias k
elif [[ $- == *i* ]]; then
  echo "warning: bash completion _complete_alias not found" >&2
fi
