source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

alias ls='eza --icons --git'
alias la='eza -a --icons --git'
alias tree='eza --tree -L 3 --icons --git'

alias dotfiles='/usr/bin/git --git-dir=$HOME/Repos/dotfiles --work-tree=$HOME'

eval "$(fnm env --use-on-cd --shell zsh)"
eval "$(starship init zsh)"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/hieult/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
