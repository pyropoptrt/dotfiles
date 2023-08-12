alias reload!='. ~/.zshrc'


# file listing
alias ll="ls -lHp --color=auto"
alias la="ls -lAaHp --color=auto"
alias ltr="ls -ltrHp | tail"

# file manipulation
alias copy="cp -pr"

# terminal navigation
alias x="exit"

# preferred flags
#alias pwd="$(which pwd) -P"


# Fix for when quicksilver crashes
alias quick="killall Quicksilver >> /dev/null; open /Applications/QuickSilver.app"


# Fix for when CoreAudio crashes
# alias coreaudio="sudo launchctl kickstart -kp system/com.apple.audio.coreaudio; sudo killall 'AU Lab' >> /dev/null; open ~/Library/Mobile\ Documents/com~apple~CloudDocs/Documents/Dropbox\ Files/Car\ Audio/Headphones/Fostex\ T40RP\ mk3\ new.trak"
#alias coreaudio="sudo launchctl kickstart -kp system/com.apple.audio.coreaudio; sudo killall 'AU Lab' >> /dev/null;"
alias coreaudio="sudo pkill coreaudiod; sudo killall 'AU Lab' >> /dev/null;"


# Shortcut for Sublime Text
# alias st="$(which subl)"
alias st="subl"


# Quick folder navigation
alias ..="cd .."
alias ...="cd ../.."
alias desk="cd ~/Desktop"
alias down="cd ~/Downloads"
alias notes="st ~/Dropbox/Unix\ Notes.txt"
alias epic="~/Desktop/Epic/files"


# quick dnsmasq configuration editor
alias dnsmasq="vim ~/.config/valet/dnsmasq.d/tld-test.conf && sudo brew services restart dnsmasq"


#   Ansible
alias ans="cd ~/Documents/ansible"
alias ap="ans; ansible-playbook -K"
alias dist="ans; ap ubuntu-dist-upgrade.yaml"
alias yum="ans; ap centos-ossec_aide-update.yaml"


# powershell
alias powershell="pwsh"

#   Epic
# queries Epic servers for user groups
function egroups {
	currentPath=$(pwd);

	ans; 
	ansible epic-linux -K -m shell -a "groups ${1}"; 
	cd "${currentPath}";
}

# retrieve the gecos for a user
function sssctl {
	currentPath=$(pwd);

	ans; 
	# ansible epic-prod -K -m shell -a  "sssctl user-checks ${1} | ack -1 \"gecos: (\w.+)\""; 
	ansible epic-prod -K -m shell -a  "sssctl user-checks ${1} | ack -1 --color \"\- gecos: (\w.+)\""; 
	cd "${currentPath}";
}

# upload files to our epic servers
function upload {
	echo "Uploading our file to production"
	scp -rpC $@ epicadm@${epicprod}:${fomsProd}

	echo "Uploading our file to our test/non-prod servers"

	# for i in build support training
	for i in $epicpoc $epicsup $epicmst
	do
		scp -rpC $@ epicadm@${i}:${fomsNonProd}
	done

	echo "Delete our uploaded file"
	rm -rf $@
}

function newserver {
	ans;
	$(which cp) server-build-template.yaml ${1}-build.yaml;
	$(which st) ${1}-build.yaml;
}

# Convert our timestamps from epoch to normal
# $ epoch 1688421231
function epoch {
	date -r $@;
}
