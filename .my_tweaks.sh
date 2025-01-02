export EDITOR='nvim'

export KEYTIMEOUT=200

# Overwrite for vi-mode
bindkey -M vicmd '^e' edit-command-line # Normal Mode
bindkey -M viins '^e' edit-command-line # Insert Mode
# bindkey -M viopp '^e' edit-command-line # Opperator pending
bindkey -M visual '^e' edit-command-line # Visual Mode

#################################################
###No longer needed because of omz::vi-mode plugin.
#################################################
# set -o vi
# bindkey -v
# autoload edit-command-line; zle -N edit-command-line


# PROMPT+='$(vi_mode_prompt_info)'
# 
# vi_mode_prompt_info() {
#   if [ $KEYMAP = vicmd ]; then
#     echo "[NORMAL]"
#   else
#     echo "[INSERT]"
#   fi
# }

# Overwrite for zsh completion
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# Overwrite for zsh autosuggest.
bindkey '^y' autosuggest-accept

# Make fzf accept like vim.
# fzf --bind 'ctrl-y:accept'
export FZF_DEFAULT_OPTS="--bind 'ctrl-y:accept'"

