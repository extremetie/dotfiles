alias dots='git --git-dir=$HOME/.dots --work-tree=$HOME'
alias src='source $ZDOTDIR/.zshrc'
alias venv='source .venv/bin/activate'

alias vim='nvim'
alias c='wl-copy'
alias v='wl-paste'

alias rm='rm -I'
alias ls='ls -p --color=auto'
alias ll='ls -plArth --color=auto'
alias grep='grep --color=auto'

cyan='%B%F{cyan}'
reset='%b%f'
PROMPT="[$cyan%n$reset@$cyan%m %~$reset]$ "

bindkey -v
KEYTIMEOUT=1

setopt globdots
[ -d $XDG_CACHE_HOME/zsh ] || mkdir -p $XDG_CACHE_HOME/zsh
autoload -Uz compinit && compinit -d $XDG_CACHE_HOME/zsh
zstyle ':completion:*' menu select

setopt append_history inc_append_history share_history
[ -d $XDG_STATE_HOME/zsh ] || mkdir -p $XDG_STATE_HOME/zsh
HISTFILE=$XDG_STATE_HOME/zsh/history
HISTSIZE=10000
SAVEHIST=10000

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down
