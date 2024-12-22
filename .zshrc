# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
typeset -g POWERLEVEL9K_INSTANT_PROMPT=quiet

# Enable Powerlevel10k instant prompt.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi
export XDG_DATA_HOME=$HOME/.local/share


######
# Zinit is a plugin manager.
######
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download if not present
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Add p10k prompt plugin
zinit ice depth=1; zinit light romkatv/powerlevel10k


# Add syntax highlighting plugin
zinit light zsh-users/zsh-syntax-highlighting

# Add autosuggestions
zinit light zsh-users/zsh-autosuggestions

# Add cli completion suggestions plugin
zinit light zsh-users/zsh-completions

# Add fzf to completion
zinit light Aloxaf/fzf-tab

# Navigate like a pro, I used to use arch btw.
# zinit light ohmyzsh/ohmyzsh path:plugins/vi-mode
zinit snippet OMZ::plugins/vi-mode/vi-mode.plugin.zsh


######
# Trigger behaviour
######

autoload -U compinit && compinit

zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'

zinit cdreplay -q

######
# Run my tweaks ontop
######
if [ -f ~/.my_tweaks ]; then
. ~/.my_tweaks
fi
if [ -f ~/.my_aliases ]; then
. ~/.my_aliases
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
# eval "$(fzf --zsh)"

######
# History
######
HISTSIZE=10000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_save_no_dups
setopt hist_ignore_all_dups
setopt hist_ignore_dups
setopt hist_find_no_dups
