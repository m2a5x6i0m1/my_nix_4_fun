#---- ZINIT ----
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"
if [ ! -d "$ZINIT_HOME" ]; then
   mkdir -p "$(dirname $ZINIT_HOME)"
   git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi
source "${ZINIT_HOME}/zinit.zsh"
#--------------

# -- Big 3 plugins -------------
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-autosuggestions
zinit light zsh-users/zsh-completions
# ------------------------

#---- completion ---------
zstyle ':completion:*' completer _expand _complete _ignored _correct _approximate
zstyle ':completion:*' matcher-list '+' '+m:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"

autoload -Uz compinit && compinit -C # don't forget to manually remove .zcompdump when changing this file or upgrading system
#-------------------------

#---- HISTORY --------------------
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
#---------------------------------

#---- keybindings ----
bindkey -e
alias ls='eza -1 --icons=always --color=always'
alias cl='clear; fastfetch -l nixos_old_small --logo-padding-left 1 --logo-padding-right 3'
alias lg='lazygit status'
alias sv='sudo -E nvim'
alias nv='nvim'
#---------------------

#---- some random stuff ----
export MANPAGER="nvim +Man!"
export EDITOR="nvim"
eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"
#---------------------------

# ---- MUST STAY AT BOTTOM --------------------------------------------------


fastfetch -l nixos_old_small --logo-padding-left 1 --logo-padding-right 3

#---- STARSHIP ----
export STARSHIP_CONFIG=~/.config/starship/starship.toml
eval "$(starship init zsh)"

TRANSIENT_PROMPT="${PROMPT// prompt / prompt --profile transient }"
TRANSIENT_RPROMPT="${PROMPT// prompt / prompt --profile rtransient }"

autoload -Uz add-zle-hook-widget
add-zle-hook-widget zle-line-finish transient-prompt

function transient-prompt() {
    PROMPT="$TRANSIENT_PROMPT" RPROMPT="$TRANSIENT_RPROMPT" zle .reset-prompt
}
#------------------
