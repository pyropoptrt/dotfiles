alias reload!='. ~/.zshrc'


# file listing
alias ll="ls -lHp --color=auto"
alias la="ls -lAaHp --color=auto"
alias ltr="ls -ltrHp | tail"


alias x="exit"


# Fix for when quicksilver crashes
alias quick="killall Quicksilver >> /dev/null; open /Applications/QuickSilver.app"


# Fix for when CoreAudio crashes
# alias coreaudio="sudo launchctl kickstart -kp system/com.apple.audio.coreaudio; sudo killall 'AU Lab' >> /dev/null; open ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Dropbox\ Files/Car\ Audio/Headphones/Fostex\ T40RP\ mk3\ new.trak"
alias coreaudio="sudo launchctl kickstart -kp system/com.apple.audio.coreaudio; sudo killall 'AU Lab' >> /dev/null;"


# Shortcut for Sublime Text
alias st="$(which subl)"


# Quick folder navigation
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias notes="st ~/Dropbox/Unix\ Notes.txt"
alias epic="~/Desktop/Epic/files"


# quick dnsmasq configuration editor
alias dnsmasq="vim ~/.config/valet/dnsmasq.d/tld-test.conf && sudo brew services restart dnsmasq"


