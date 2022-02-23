autoload -U history-search-end # https://opensource.apple.com/source/zsh/zsh-55/zsh/Functions/Zle/history-search-end

zle -N history-beginning-search-backward-end history-search-end # https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html
zle -N history-beginning-search-forward-end history-search-end # https://zsh.sourceforge.io/Doc/Release/Zsh-Line-Editor.html

bindkey '\e[A' history-beginning-search-backward-end # Up arrow key
bindkey '\e[B' history-beginning-search-forward-end # Down arrow key
bindkey "^[[1;2C" forward-word # Shift + Right arrow key
bindkey "^[[1;2D" backward-word # Shift + Left arrow key
bindkey  "^[[H"   beginning-of-line # Home
bindkey  "^[[F"   end-of-line # End
bindkey  "^[[3~"  delete-char # Del
