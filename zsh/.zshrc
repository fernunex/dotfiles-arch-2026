# =========================
# Zsh base config
# =========================

# History
HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000
SAVEHIST=10000

setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt SHARE_HISTORY
setopt AUTO_CD
setopt CORRECT
setopt PROMPT_SUBST

# Use Emacs-style keybindings
bindkey -e

# =========================
# Completion
# =========================

autoload -Uz compinit
compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# =========================
# Better commands
# =========================

alias ls='eza --icons --group-directories-first'
alias ll='eza -lah --icons --group-directories-first'
alias la='eza -la --icons --group-directories-first'
alias tree='tree -a -I ".git|node_modules|__pycache__"'

alias cat='bat --paging=never'
alias grep='rg'
alias find='fd'

alias cls='clear'
alias update='sudo pacman -Syu'
alias mirrors='sudo reflector --latest 20 --sort rate --save /etc/pacman.d/mirrorlist'
alias fast='fastfetch'

# Pacman helpers
alias pacs='pacman -Ss'
alias paci='sudo pacman -S'
alias pacr='sudo pacman -Rns'
alias pacq='pacman -Qs'

# Safer defaults
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'

# Navigation
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

# Git
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git log --oneline --graph --decorate --all'

# =========================
# fzf
# =========================

if [[ -f /usr/share/fzf/key-bindings.zsh ]]; then
  source /usr/share/fzf/key-bindings.zsh
fi

if [[ -f /usr/share/fzf/completion.zsh ]]; then
  source /usr/share/fzf/completion.zsh
fi

# =========================
# zoxide
# =========================

eval "$(zoxide init zsh)"

# =========================
# Starship prompt
# =========================

eval "$(starship init zsh)"

# =========================
# Plugins
# Syntax highlighting should be near the end
# =========================

if [[ -f /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh ]]; then
  source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
fi

if [[ -f /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]]; then
  source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Created by `pipx` on 2026-06-28 17:56:19
export PATH="$PATH:/home/fernunex/dotfiles/scripts/.local/bin"

export PATH="$PATH:/home/fernunex/.cargo/bin"

# Fast Node Manager
eval "$(fnm env --use-on-cd --shell zsh)"

# pnpm
export PNPM_HOME="/home/fernunex/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME/bin:"*) ;;
  *) export PATH="$PNPM_HOME/bin:$PATH" ;;
esac
# pnpm end
#

fastfetch

# >>> Codex installer >>>
export PATH="/home/fernunex/.local/bin:$PATH"
# <<< Codex installer <<<


eval "$(codex completion zsh)"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/fernunex/miniforge3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/fernunex/miniforge3/etc/profile.d/conda.sh" ]; then
        . "/home/fernunex/miniforge3/etc/profile.d/conda.sh"
    else
        export PATH="/home/fernunex/miniforge3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba shell init' !!
export MAMBA_EXE='/home/fernunex/miniforge3/bin/mamba';
export MAMBA_ROOT_PREFIX='/home/fernunex/miniforge3';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias mamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
