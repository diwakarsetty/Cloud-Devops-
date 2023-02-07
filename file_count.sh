
file_count() {
  local count=0
  for file in "$@"; do
    if [ -f "$file" ]; then
      ((count++))
    fi
  done
  echo "$count"
}

for file in "$@"; do
  if [ -f "$file" ]; then
    echo "$file is a regular file"
    echo "--- $file ls -l ---"
    ls -l "$file"
    echo ""
  elif [ -d "$file" ]; then
    echo "$file is a directory"
    echo "--- $file ls -l ---"
    ls -l "$file"
    echo ""
  else
    echo "$file is of another type"
  fi
done

echo "There are $(file_count "$@") regular files among the provided arguments."


