# Source: https://github.com/thoughtbot/dotfiles/blob/42a313bde1f4dc7a75cc276714008c77bf3821bf/zsh/functions/mcd

# Make directory and change into it.

function mcd() {
  mkdir -p "$1" && cd "$1";
}