#!/bin/bash

# Install native apps
# make sure that brew cask is installed first
# brew install caskroom/cask/brew-cask
# brew tap caskroom/versions

# to maintain cask ....
brew update && brew upgrade && brew cleanup && brew cleanup --cask


# daily
brew install --cask iris                  # saves your eyes. Seriously.
brew install --cask spectacle             # handy utility for moving/resizing windows
brew install --cask dropbox
brew install --cask lastpass              # passwords and such
# brew install --cask soundflower           # for capturing audio output
brew install --cask blackhole-2ch         # for capturing audio output
brew install --cask blackhole-16ch        # for capturing audio output
brew install --cask au-lab                # I use this for global eq
brew install --cask opensoundmeter        # audio metering
brew install --cask spotify               # gotta have my tunes
brew install --cask qobuz-downloader      # hi-res music
brew install --cask transmit              # awesome sftp client
brew install --cask raycast               # launcher
brew install --cask iterm2                # much better than Apple's terminal
brew install --cask ghostty               # modern terminal emulator
brew install --cask warp                  # AI-powered terminal
brew install --cask slack
brew install --cask discord               # all the cool kids are on this nowadays
brew install --cask signal                # encrypted messaging
brew install --cask obs                   # streaming/recording


# dev
brew install --cask sublime-text          # my editor of choice
brew install --cask visual-studio-code    # VSCode
brew install --cask cursor                # AI-powered editor
brew install --cask claude-code           # Anthropic Claude CLI
brew install --cask docker-desktop        # Docker
brew install --cask vagrant
brew install --cask utm                   # VM manager (Apple Silicon)
brew install --cask dbngin               # local database manager
brew install --cask tableplus            # MySQL/Postgres GUI
brew install --cask bruno                # API client
brew install --cask insomnia             # API client (alt)
brew install --cask miniconda            # Python environment management
brew install --cask lm-studio            # local LLM runner


# productivity
brew install --cask obsidian             # knowledge base / notes
brew install --cask adobe-acrobat-reader
brew install --cask the-unarchiver
brew install --cask betterdisplay        # display management
brew install --cask logi-options+        # Logitech device manager
brew install --cask zap                  # app uninstaller


# browsers
brew install --cask arc
brew install --cask firefox
brew install --cask brave-browser


# less often
brew install --cask caffeine             # keeps laptop from going into sleep mode
brew install --cask vlc
brew install --cask sdformatter
brew install --cask wireshark            # all teh packets are belong to me™
brew install --cask wireshark-app
brew install --cask xld                  # for the occasional file conversion
brew install --cask soulver              # cool little notepad for doing maths
brew install --cask balenaetcher         # flash OS images to SD/USB
brew install --cask wifiman              # WiFi analyzer
brew install --cask webull               # stock trading
