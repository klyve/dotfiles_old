# .zshrc
autoload -U promptinit; promptinit
autoload -Uz compinit
compinit
prompt pure


[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

for file in $(find ~/.dotfiles -name ".*"); do
    [ -f "$file" ] && source "$file"
done

# Kubectl autocomplete
source <(kubectl completion zsh)

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
