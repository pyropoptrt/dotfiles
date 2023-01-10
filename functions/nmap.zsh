# all my aliases and scripts that I use for nmap
# (some of these are stolen and modified from the oh-my-zsh nmap plugin)

# ALIASES

# update nmap script database
alias nmap_update="sudo nmap --script-updatedb";

alias nmap_fast="nmap -F -T5 --version-light --top-ports 300 -sV -Pn";
alias nmap_full="sudo nmap -sS -T4 -PE -PP -PS80,443 -PY -g 53 -A -p1-65535 -v -Pn";

# my shortcuts for the above commands
alias nf="${nmap_fast}";
alias nff="${nmap_full}";

# use nmap to get a MAC address
alias nmap_mac="sudo nmap -sP -Pn";

# check our ssl ciphers
alias nmap_ssl_check="nmap -sV --script ssl-enum-ciphers -p 443";

# run our nmap vulnerability script
alias nmap_vuln="nmap -sV -Pn --script vulners";
alias vuln="${nmap_vuln}";

# get http methods via nmap
alias options="nmap -p 80,443,8080,8443,8008,9080,9443 --script http-methods";

# get application banners
alias nmbanner="nmap -sV --script banner";

alias nmservices="nmap -sV --version-intensity 5";



# FUNCTIONS

# check port status
function port {
	nmap -sC -sV -Pn -p ${1} ${2};
}
