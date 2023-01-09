#   Vagrant

# ALIASES

# get status of all vagrant images
alias vgs="vagrant global-status";


# FUNCTIONS


# build a fresh vagrant image 
function vu {
	vagrant up $@ --provision;
}

# ssh into vagrant image
function vs {
	vagrant ssh $@;
}

# tear down vagrant image and rebuild with our provisioning script
function vd {
	vagrant destroy -f $@; vagrant up $@ --provision;
}

# tear down vagrant image without rebuilding
function vdd {
	vagrant destroy -f $@;
}