# .zshrc
autoload -U +X bashcompinit && bashcompinit
autoload -U promptinit; promptinit
autoload -Uz compinit
compinit
# prompt pure

source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme
source /usr/local/opt/powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.config/dotfiles/.p10k.zsh ]] || source ~/.config/dotfiles/.p10k.zsh


[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc


export FZF_DEFAULT_COMMAND='ag --follow --nocolor --ignore node_modules -g ""'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

for file in $(find ~/.dotfiles -name ".*"); do
    [ -f "$file" ] && source "$file"
done

# Run the default dev environment
dev

# Kubectl autocomplete
source <(kubectl completion zsh)

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

complete -F __start_kubectl k

if [ "$TERM" != "screen-256color" ]; then
  export TERM=screen-256color
fi


[ ! -z "${TMUX+x}" ] && export TERM="screen-256color"


# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
