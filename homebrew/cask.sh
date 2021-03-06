#!/bin/bash

# Install native apps
# make sure that brew cask is installed first
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# to maintain cask ....
# brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
brew update && brew cleanup && brew cask cleanup

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
brew cask install iterm2                # giving this another try

# dev
# brew cask install sublime-text3       # Apparently this has been renamed
brew cask install sublime-text
brew cask install atom
brew cask install imagealpha
brew cask install imageoptim
brew cask install sequel-pro            # MySQL GUI. Pure Awesomeness.
brew cask install livereload
brew cask install virtualbox
brew cask install virtualbox-extension-pack
brew cask install heroku-toolbelt
brew cask install vagrant
brew cask install github-desktop
brew cask install dockertoolbox
brew cask install integrity             # Website link checker software
brew cask install scrutiny              # Some basic SEO software


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
