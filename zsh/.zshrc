# .zshrc
autoload -U promptinit; promptinit
prompt pure


[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc


test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

for file in $(find ~/.dotfiles -name ".*"); do
    [ -f "$file" ] && source "$file"
done

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 