# Script for all my server shortcuts
# servernames omitted for obvious reasons

# defined servers
export adminserver="";
export epicprd="";
export epicrpt="";
export epicdrp="";
export epicpoc="";
export epicsup="";
export epicmst="";
export epicjrn="";
export epicbak="";

# point this at our current prod server
export epicprod="${epicprd}"
#export epicprod="${epicdrp}"

# our foms folder
export fomsProd="/epicfiles/prdfiles/release/ras/"
export fomsNonProd="/epicfiles/prdfiles/release/ras/"


# admin server
alias admin="ssh ${adminserver}";

# epic servers
alias prd="ssh ${epicprd}";
alias prod="ssh ${epicprod}";
alias shd="ssh ${epicrpt}";
alias rpt="shd";
alias drp="ssh ${epicdrp}";
alias poc="ssh ${epicpoc}";
alias tst="poc";
alias sup="ssh ${epicsup}";
alias mst="ssh ${epicmst}";
alias trn="mst";

# epic auxiliary servers
alias jrn="ssh ${epicjrn}";
alias bak="ssh ${epicbak}";
