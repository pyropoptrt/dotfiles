#!/bin/bash


# to maintain cask ....
brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup


# Install native apps

brew install caskroom/cask/brew-cask
brew tap caskroom/versions

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install onepassword
#brew cask install rescuetime
brew cask install flux
brew cask install spotify
brew cask install transmit
brew cask install growl-fork
brew cask install growlnotify
brew cask install growlvoice
brew cask install quicksilver           # Quicksilver > Alfred (imho)

# dev
brew cask install sublime-text3
# brew cask install atom
brew cask install imagealpha
brew cask install imageoptim
brew cask install sequel-pro            # MySQL GUI. Pure Awesomeness.
brew cask install livereload
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install heroku-toolbelt

# fun
brew cask install limechat              # irc client
brew cask install miro-video-converter
brew cask install horndis               # usb tethering
brew cask install caffeine              # keeps laptop from going into sleep mode
brew cask install gitter
brew cask install slack
brew cask install adium                 # My preferred chat client

# browsers
brew cask install google-chrome-canary
brew cask install firefox-nightly
brew cask install firefox
brew cask install webkit-nightly
brew cask install chromium
brew cask install torbrowser

# less often
brew cask install disk-inventory-x
# brew cask install screenflow4           # 4 specifically not 5.
brew cask install vlc
brew cask install gpgtools
#brew cask install licecap
#brew cask install utorrent
brew cask install evernote
brew cask install mou
brew cask install sdformatter
brew cask install unrarx
