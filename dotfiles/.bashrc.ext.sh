for file in ~/.bashrc.d/*.sh; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file"
done