#!/bin/bash

# Install native apps
# make sure that brew cask is installed first
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# to maintain cask ....
brew update && brew upgrade && brew cleanup && brew cask cleanup --cask


# daily
brew install --cask spectacle             # handy utility for moving/resizing windows
brew install --cask dropbox
brew install --cask lastpass			  # passwords and such
brew install --cask spotify				  # gotta have my tunes
brew install --cask transmit			  # awesome sftp client
brew install --cask quicksilver           # Quicksilver > Alfred (imho)
brew install --cask iterm2                # much better than Apple's terminal
brew install --cask slack
brew install --cask discord               # all the cool kids are on this nowadays 
brew install --cask tweeten               # nice replacement for tweetdeck. RIP.


# dev
brew install --cask sublime-text          # my editor of choice
brew install --cask atom
brew install --cask sequel-ace            # MySQL GUI. Pure Awesomeness. Updated from PRO to support MySQL 8

brew install --cask virtualbox
brew install --cask virtualbox-extension-pack
brew install --cask heroku-toolbelt
brew install --cask vagrant
brew install --cask github-desktop
brew install --cask dockertoolbox

brew install --cask imagealpha
brew install --cask imageoptim

brew install --cask integrity             # Website link checker software
brew install --cask scrutiny              # Some basic SEO software


# fun
brew install --cask horndis               # usb tethering
brew install --cask caffeine              # keeps laptop from going into sleep mode


# browsers
# mostly disabled since I'm not browser testing nowadays
brew install --cask firefox
brew install brave-browser --cask
# brew install --cask google-chrome-canary
# brew install --cask firefox-nightly
# brew install --cask webkit-nightly
# brew install --cask chromium
# brew install --cask torbrowser


# less often
brew install --cask disk-inventory-x
brew install --cask vlc
brew install --cask gpgtools
brew install --cask sdformatter
brew install --cask unrarx
