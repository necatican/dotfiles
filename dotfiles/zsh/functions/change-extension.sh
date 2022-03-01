# source https://github.com/thoughtbot/dotfiles/blob/main/zsh/functions/change-extension

# Change file extensions recursively in current directory or $3rd argument
#
#   change-extension erb haml

function change-extension() {
  _path=${3-$(pwd)}

  foreach f (${_path%/}/**/*.$1)
    mv $f $f:r.$2 && echo "Changed $f to $f:r.$2"
  end
}