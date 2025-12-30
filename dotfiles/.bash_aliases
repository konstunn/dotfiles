[[ -r "$HOME/.bash_aliases.local" ]] && source "$HOME/.bash_aliases.local"

for file in "$HOME"/.bash_aliases.d/*.sh; do
  [ -r "$file" ] || continue
  source "$file"
done
