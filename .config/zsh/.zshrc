alias dots='git --git-dir=$HOME/.dots --work-tree=$HOME'
alias vim='nvim'

alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ls='ls --color=auto'
alias rm='rm -I'

bindkey -v
KEYTIMEOUT=1

cyan='%B%F{cyan}'
reset='%b%f'
PROMPT="[$cyan%n$reset@$cyan%m %~$reset]\$ "

setopt globdots
[ -d $XDG_CACHE_HOME/zsh ] || mkdir -p $XDG_CACHE_HOME/zsh
autoload -Uz compinit && compinit -d $XDG_CACHE_HOME/zsh
zstyle ':completion:*' menu select

setopt append_history inc_append_history share_history
[ -d $XDG_STATE_HOME/zsh ] || mkdir -p $XDG_STATE_HOME/zsh
HISTFILE=$XDG_STATE_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000

zle-keymap-select () {
    if [[ $KEYMAP == vicmd ]]; then
        echo -ne '\e[2 q'
    else
        echo -ne '\e[6 q'
    fi
}
precmd_functions+=(zle-keymap-select)
zle -N zle-keymap-select

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
