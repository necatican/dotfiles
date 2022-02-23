# Source: https://github.com/thoughtbot/dotfiles/blob/42a313bde1f4dc7a75cc276714008c77bf3821bf/zsh/functions/g

# No arguments: `git status`
# With arguments: acts like `git`
g() {
  if [[ $# -gt 0 ]]; then
    git "$@"
  else
    git status
  fi
}