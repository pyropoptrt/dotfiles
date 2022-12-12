# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -lFp --color"
  alias l="gls -lAhp --color"
  alias ll="gls -lhp --color"
  alias la='gls -lAhp --color'
fi

# other aliases
alias reload!='. ~/.zshrc' #reload our zshrc file
alias home='cd ~' #drop us back into the user home folder
