#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew)
then
  echo "  Installing Homebrew for you."

  # Install the correct homebrew for each OS type
  if test "$(uname)" = "Darwin"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  elif test "$(expr substr $(uname -s) 1 5)" = "Linux"
  then
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/linuxbrew/go/install)"
  fi

fi

# Make sure we're using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# ZSH syntax highlighting
brew install zsh-syntax-highlighting

# Install homebrew packages
brew install grc coreutils

# Install GNU core utilities (those that come with OS X are outdated).
# Don't forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
# updated bin location for M1 processors
sudo ln -s /usr/local/bin/gsha256sum /opt/homebrew/bin/sha256sum

# from Paul Irish dot files
# Install some other useful utilities like `sponge`.
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed

# Bash 4
# Note: don't forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash

# Install wget with IRI support
brew install wget

# Install more recent versions of some OS X tools
brew install vim
brew install grep
brew install screen

# php stuff
brew install php
brew install composer
brew install php-code-sniffer
brew install phpstan


# run this script when this file changes guy.
brew install entr

# github util. imho better than hub
brew install gh

# gitlab util
brew install glab


# mtr - ping & traceroute. best.
brew install mtr

# allow mtr to run without sudo
mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//')  #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
sudo chmod 4755 $mtrlocation/sbin/mtr
sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install ack
brew install git
brew install git-lfs
brew install httpie
brew install imagemagick
brew install lua luarocks
brew install node # This installs `npm` too using the recommended installation method
brew install lynx
brew install rbenv
brew install ruby
brew install ruby-build
brew install rust
brew install ssh-copy-id
brew install tree
brew install ffmpeg
brew install terminal-notifier
brew install zsh
brew install mysql
brew install nmap
brew install sshuttle # neat little utility for vpn via ssh
brew install ansible  # Been using this and SaltStack hand-in-hand
brew install ansible-lint

# lint all the shell scripts™!
brew install shellcheck
brew install shfmt

# troubleshooting ssl stuff
brew install sslscan

# install dnsmasq and do some set up to allow .dev domains locally
brew install dnsmasq
# cd $(brew --prefix)
#   mkdir etc
#   echo 'address=/.test/127.0.0.1' > etc/dnsmasq.conf
#   sudo cp -v $(brew --prefix dnsmasq)/homebrew.mxcl.dnsmasq.plist /Library/LaunchDaemons
#   sudo launchctl load -w /Library/LaunchDaemons/homebrew.mxcl.dnsmasq.plist
#   sudo mkdir /etc/resolver
#   sudo bash -c 'echo "nameserver 127.0.0.1" > /etc/resolver/test'

# some stuff for playing blu-rays with vlc
brew install libbluray
brew install libaacs

# handy utils for output formatting
brew install jq       # json formatting
brew install htmlq    # html formatting

# handy CLI tools
brew install cloudflared    # Cloudflare tunnel
brew install csvkit         # CSV swiss army knife
brew install deno           # JavaScript/TypeScript runtime
brew install dos2unix       # line ending conversion
brew install htop           # interactive process viewer
brew install mailpit        # local email testing
brew install neovim         # modern vim
brew install opencode       # AI coding agent
brew install opentofu       # Terraform open source fork
brew install p7zip          # 7-zip compression
brew install ripgrep        # fast grep
brew install sherlock        # username search tool
brew install tldr           # simplified man pages
brew install tmux           # terminal multiplexer
brew install uv             # fast Python package manager
brew install watch          # run commands periodically
brew install yt-dlp         # video downloader

# Remove outdated versions from the cellar
brew cleanup

# Install our homebrew cask applications
$ZSH/homebrew/cask.sh

exit 0
