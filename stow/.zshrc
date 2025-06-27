# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi
#
#source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
#
## To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# ADDITIONAL PATHS
#export PATH="/Users/winiciusallan/.local/bin:/Users/winiciusallan/.local/bin:/opt/homebrew/bin:/Users/winiciusallan/.local/bin:/opt/homebrew/bin:/Users/winiciusallan/.local/bin:/opt/homebrew/bin:/Users/winiciusallan/.local/bin:/opt/homebrew/bin:/Users/winiciusallan/.local/bin:/opt/homebrew/bin:/Users/winiciusallan/.local/bin:/Users/winiciusallan/.cabal/bin:/Users/winiciusallan/.ghcup/bin:/opt/homebrew/bin:/Users/winiciusallan/.local/bin:/opt/homebrew/bin:/opt/homebrew/sbin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin:/Applications/iTerm.app/Contents/Resources/utilities:/Users/winiciusallan/go/bin::/Users/winiciusallan/go/bin"
export JAVA_HOME=/opt/homebrew/opt/openjdk/libexec/openjdk.jdk/Contents/Home
export PATH=$JAVA_HOME/bin:$PATH
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
export PATH="$HOME/go/bin:$PATH"

###########
# Aliases
###########
alias ll="ls -la"
alias grep="grep --color=auto"
alias c6="source ~/Documents/Faculdade/lsd/cloud/rc-files/c6-admin-openrc.sh"
alias cloud-dev="source ~/Documents/Faculdade/lsd/cloud/rc-files/cd-admin-openrc.sh"
alias c5="source ~/Documents/Faculdade/lsd/cloud/rc-files/admin-openrc.sh"
alias swift-lang="/opt/homebrew/opt/swift/bin/swift"
alias k="kubectl"
alias o="openstack"
alias qb='nohup qutebrowser -r default &'

# Alias for ghostty
# For more information https://ghostty.org/docs/help/terminfo
alias ssh="TERM=xterm-256color ssh"

[ -f "/Users/winiciusallan/.ghcup/env" ] && source "/Users/winiciusallan/.ghcup/env" # ghcup-env

remove_colors() {
    sed -r 's/\x1b\[[0-9;]*m//g'
}
eval "$(starship init zsh)"

flush_cache() {
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder
}

# Created by `pipx` on 2024-12-11 01:38:38
export PATH="$PATH:/Users/winiciusallan/.local/bin"

# Kubectl completion
function kubectl_completion {
    autoload -Uz compinit
    compinit
    source <(kubectl completion zsh)
}

kubectl_completion
