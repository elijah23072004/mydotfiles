
# If not running interactively, don't do anything
[[ $- != *i* ]] && return
PS1='[\u@\h \W]\$ '
# Define Editor
export EDITOR=nvim

#set history length
HISTSIZE=-1
HISTFILESIZE=-1

# -----------------------------------------------------
# ALIASES
# -----------------------------------------------------
alias inv='nvim $(fzf -m --preview="bat --color=always {}")'
alias startRemoteControlServer="/home/eli/Coding/projects/remote_control/run.sh"
alias bluetooth="blueman-manager"
alias c='clear'
alias ff='fastfetch'
alias pf='pfetch'
alias ls='eza -a --icons'
alias ll='eza -al --icons'
alias lt='eza -a --tree --level=1 --icons'
#alias shutdown='systemctl poweroff'
alias restartAudio='systemctl --user restart pipewire pipewire-pulse'
alias v='$EDITOR'
alias matrix='cmatrix'
alias wifi='nmtui'
alias winclass="xprop | grep 'CLASS'"
alias dot="cd ~/dotfiles"
alias comp="cd ~/CompSci" 
alias wifiTest="speedtest-cli"
alias wifitest="speedtest-cli"
alias httpstart="python3 -m http.server"
alias jellyfinstart="sudo systemctl start jellyfin.service"
alias jellyfinstop="sudo systemctl stop jellyfin.service"
alias cleanup='~/dotfiles/scripts/cleanup.sh'
alias update='yay -Syu'

# -----------------------------------------------------
# GIT
# -----------------------------------------------------

alias gs="git status"
alias ga="git add"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gst="git stash"
alias gsp="git stash; git pull"
alias gcheck="git checkout"
alias gcredential="git config credential.helper store"



# -----------------------------------------------------
# EDIT NOTES
# -----------------------------------------------------

alias notes='$EDITOR ~/notes.txt'

export PATH="/usr/lib/ccache/bin/:$PATH"

export TERM=xterm

# -----------------------------------------------------
# START STARSHIP
# -----------------------------------------------------
eval "$(starship init bash)"

#fzf key bindings and fuzzy completion
source <(fzf --bash)

# -----------------------------------------------------
# PYWAL
# -----------------------------------------------------
cat ~/.cache/wal/sequences

# -----------------------------------------------------
# PFETCH if on wm
# -----------------------------------------------------
echo ""
if [[ $(tty) == *"pts"* ]]; then
    pfetch
fi

#android development variables
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/platform-tools
unset ANDROID_SDK_ROOT


# Created by `pipx` on 2025-11-19 14:42:26
export PATH="$PATH:/home/eli/.local/bin"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#export correct vllm version RolmOcr 
export VLLM_USE_V1=1



