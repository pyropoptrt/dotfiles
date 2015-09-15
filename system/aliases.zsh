# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -lh --color"
  alias la='gls -lAh --color'
fi

# other aliases
alias reload!='. ~/.zshrc' #reload our zshrc file
alias home='cd ~' #drop us back into the user home folder
