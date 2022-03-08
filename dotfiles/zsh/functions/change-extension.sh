# Original source https://github.com/thoughtbot/dotfiles/blob/main/zsh/functions/change-extension
# I edited this to add a third argument to specify another directory and work with bash when needed

# Change file extensions recursively in current directory or $3rd argument
#
#   change-extension erb haml

change-extension () {
  _path=${3-$(pwd)}

  for f in "${_path%/}"/**/*."$1"
  do
    _newPath=${f%".$1"}.$2
    mv "$f" "$_newPath" && echo "Changed $f to $_newPath"
  done
}