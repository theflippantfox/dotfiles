set -g fish_greeting ''

export STARSHIP_CONFIG=/home/theflippantfox/.config/starship/starship.toml
starship init fish | source

alias ls="exa"
alias lsa="exa -la"
alias bat="cat"
