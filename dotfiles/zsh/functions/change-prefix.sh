# Change file prefixes recursively in current directory or $3rd argument
#
#   change-prefix "Meeting-" ""

change-prefix() {
  _path=${3-$(pwd)}
  _prefix=${1}
  _newPrefix=${2-""}

  for f in "${_path%/}"/**/*; do
    _fileName=$(basename "$f")
    if [[ $_fileName == "$_prefix"* ]]; then
      _newFileName="$_newPrefix${_fileName#"$_prefix"}"
      _newPath=$(dirname "$f")/$_newFileName
       mv "$f" "$_newPath" && echo "Changed $f to $_newPath"
    fi
  done
}
