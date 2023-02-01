# Script for all my server shortcuts
# servernames omitted for obvious reasons

# defined servers
export admin="";
export epicprod="";
export epicrpt="";
export epicdrp="";
export epicpoc="";
export epicsup="";
export epicmst="";
export epicjrn="";
export epicbak="";


# admin server
alias admin="ssh lchavers@${admin}";

# epic servers
alias prd="ssh lchavers@${epicprod}";
alias shd="ssh lchavers@${epicdrp}";
alias rpt="shd";
alias drp="ssh lchavers@${epicrpt}";
alias poc="ssh lchavers@${epicpoc}";
alias tst="poc";
alias sup="ssh lchavers@${epicsup}";
alias mst="ssh lchavers@${epicmst}";
alias trn="mst";

# epic auxiliary servers
alias jrn="ssh lchavers@${epicjrn}";
alias bak="ssh lchavers@${epicbak}";
