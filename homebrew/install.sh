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

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade --all

# Install homebrew packages
brew install grc coreutils

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
#brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# from Paul Irish dot files
# Install some other useful utilities like `sponge`.
brew install moreutils
# GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed
brew install findutils
# GNU `sed`, overwriting the built-in `sed`
brew install gnu-sed --default-names

# Bash 4
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
brew install bash
# regular bash-completion package is held back to an older release, so we get latest from versions.
#   github.com/Homebrew/homebrew/blob/master/Library/Formula/bash-completion.rb#L3-L4
brew tap homebrew/versions

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/screen
# brew install homebrew/php/php56 --with-gmp

# # Handy utility for php debugging
# brew install php56-xdebug



# run this script when this file changes guy.
brew install entr

# github util. imho better than hub
brew install gh


# mtr - ping & traceroute. best.
brew install mtr

# allow mtr to run without sudo
mtrlocation=$(brew info mtr | grep Cellar | sed -e 's/ (.*//') #  e.g. `/Users/paulirish/.homebrew/Cellar/mtr/0.86`
sudo chmod 4755 $mtrlocation/sbin/mtr
sudo chown root $mtrlocation/sbin/mtr


# Install other useful binaries
brew install ack
brew install git
brew install git-lfs
brew install imagemagick --with-webp
brew install lua
brew install node # This installs `npm` too using the recommended installation method
brew install lynx
brew install rbenv
brew install speedtest_cli
brew install ssh-copy-id
brew install tree
brew install ffmpeg --with-libvpx
brew install terminal-notifier
brew install zsh
brew install mysql
brew install nmap
brew install mackup
brew install sshuttle # neat little utility for vpn via ssh
brew install ansible # Been using this and SaltStack hand-in-hand

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
brew instal jq # json formatting
brew instal htmlq # html formatting

# Remove outdated versions from the cellar
brew cleanup

# Install our homebrew cask applications
$ZSH/homebrew/cask.sh

exit 0
