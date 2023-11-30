# Various cert scripts

# ALIASES

# SSL Labs report card for cert
alias nmap_ssl="sudo nmap -sV -sC --script ssl-cert"



# FUNCTIONS

# Convert p7b keychains to the PEM format
function pem {
	local newfile="${@:r}-full.pem"
	local crtfile="${newfile:t:r}.crt"
	local oldfile="${@}"

	# prompt for our server name so we can automatically upload our file
	echo "Servername: "
	read servername

	# old commands. saved for prosperity for future troubleshooting
	# openssl pkcs7 -inform PEM -in $@ -outform PEM -out ${@:r}-full.pem -print_certs
	# rm -rf $@

	# convert our file from p7b to pem
	openssl pkcs7 -inform PEM -in ${oldfile} -outform PEM -out ${newfile} -print_certs

	# convert our file from pem to crt
	openssl x509 -inform PEM -in ${newfile} -out ${crtfile}

	# delete our old cert file
	rm -rf ${oldfile}

	# upload our new cert files
	scp -rpC ${newfile} ${servername}:~
	scp -rpC ${crtfile} ${servername}:~

	# Delete our newly created cert
	rm -rf ${newfile}
	rm -rf ${crtfile}

	# echo created new cert and uploaded
	# echo "Created ${newfile} and uploaded to ${servername}"
	echo "${newfile} and ${crtfile} have been uploaded to ${servername}"
}


# get our certs
function certs {
	if [[ ${2} ]]; then
		port="${2}";
	else
		port="443";
	fi

	openssl s_client -showcerts -connect ${1}:${port} -servername ${1};
}


# full debug output
function certs_debug {	
	if [[ ${2} ]]; then
		port="${2}";
	else
		port="443";
	fi

	openssl s_client -debug -connect ${1}:${port} -prexit;
}


function certs_check {

 	if [[ ${2} ]]; then
		port="${2}";
	else
		port="443";
	fi

	openssl s_client -connect ${1}:${port} -prexit;
}


# Check expiration date for cert
function certs_expiry {

	if [[ ${2} ]]; then
		port="${2}";
	else
		port="443";
	fi

	echo | openssl s_client -servername ${1} -connect ${1}:${port} 2>/dev/null | openssl x509 -noout -issuer -subject -dates -ext subjectAltName;
}


# check SSL/TLS versions
function which_ssl {

	if [[ ${2} ]]; then
		port="${2}";
	else
		port="443";
	fi

	nmap --script ssl-enum-ciphers -p ${port} ${1} | grep -E "TLSv|SSLv";
}