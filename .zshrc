# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/Coolguy38/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# #
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ -o interactive ]] || return

# Prompt
PROMPT="%F{cyan}%n %~>%f "
PROMPT2="%F{cyan}>>%f "

# Zsh options
setopt CORRECT          # like bash cdspell
setopt AUTO_CD          # enter directory name to cd into it

# Aliases
alias cls="clear"
alias qwerty="echo qwerty"
alias ls="eza --icons --color=auto"
alias ll="eza --icons -lah --color=auto --group-directories-first"
alias lla="eza --icons -lAh --color=auto --group-directories-first"

alias open_zshrc="code ~/.zshrc"
alias nvim_zshrc="nvim ~/.zshrc"
alias nano_zshrc="nano ~/.zshrc"
alias load_zshrc="source ~/.zshrc"
alias open_bashrc="echo 'This isnt bash anymore'"
alias nvim_bashrc="echo 'This isnt bash anymore'"
alias load_bashrc="echo 'This isnt bash anymore'"
alias nano_bashrc="echo 'This isnt bash anymore'"
alias msystem="echo 'Sir, this is arch linux'"
alias path='echo $PATH | tr ":" "\n"'
alias hi="echo 'awkward moment cuz im a shell...'"
alias open="code"
alias where_cade="echo 'Cade is... actually idk lol'"
alias update="pikaur -Syu"
alias where="where.exe"
alias clean="pikaur -Rns $(pikaur -Qtdq) && pikaur -Scc"
# The king's greeting
echo "Hello Cade! I have been waiting for you!"
# Functions
pypub() {
  rm -rf dist &&
  echo 'Dist deleted!' &&
  uv build &&
  echo 'Passed check! Now uploading...' &&
  uv-publish &&
  echo 'Upload complete! Now automatically downloading...' &&
  uv pip install --upgrade "$1"
}
why() {
    which "$1"
    echo "also wrong command"
}

no() {
    if [[ -z "$*" ]]; then
        echo "n"
    else
        echo "$*"
    fi
}
pyexe(){
  rm -rf dist build &&
  echo 'Dist and build deleted!' &&
  pyinstaller --onefile "$1"
}

when() {
    echo "hmm when was $* here?"
}

# Tools

eval "$(zoxide init zsh)"
eval "$(fzf --zsh)"

# Environment
export BROWSER=w3m
export EDITOR=nvim
source ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-you-should-use/you-should-use.plugin.zsh
source /usr/share/zsh/plugins/fzf-tab/fzf-tab.plugin.zsh
fastfetch
fortune | cowsay | lolcat
export MOZ_ENABLE_WAYLAND=1
export MESA_LOADER_DRIVER_OVERRIDE=d3d12
export GALLIUM_DRIVER=d3d12
export MESA_D3D12_DEFAULT_ADAPTER_NAME=NVIDIA
export SSL_CERT_FILE=/etc/ssl/certs/ca-certificates.crt
export REQUESTS_CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt

alias copilot="copilot.exe"
source ~/Desktop/.venv/bin/activate
alias gte=gnome-text-editor
export $(dbus-launch)
kded6 --replace &
