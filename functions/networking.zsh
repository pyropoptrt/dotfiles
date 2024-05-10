# aliases and functions for various networking tools

# ALIASES

# just get header
alias header="curl -iL -k -sD - -o /dev/null";

# # shortcut for nslookup
# alias ns="nslookup";


# FUNCTIONS

# perform a hostname lookup and make sure our input is lowercased
function ns {

    # make sure we were provided an input
    if [ -z "$@" ]; then
        echo "Missing hostname \n";
        echo "Usage : ns <hostname> \n";
        return 1;
    fi

    # convert our input to lowercase
    # host=$(awk "{ print tolower($@) }");
    host=$(echo "$@" | tr 'A-Z' 'a-z');

    # # debug our host output
    # echo "${host}";

    # run our nslookup
    nslookup "${host}";
}



# Get the geo location for an ip address
function geoip {
    curl http://api.db-ip.com/v2/free/$@;
}

# timing script for connection, start transfer, and total time
function response {
    # echo "connect | start | total";

    curl_format='{
        "connect": %{time_connect},
        "start transfer": %{time_starttransfer},
        --------------------------------------------------
        "total time": %{time_total}
    }';

    curl -o /dev/null -w "${curl_format}" -s $@;
}

# Get overall timing
function timing {

    #
    # curl wrapper returning timing information.
    #
    # curl format adapted from
    #  http://josephscott.org/archives/2011/10/timing-details-with-curl/
    #
    # Example usage:
    #   $ timing http://www.apple.com
    #   $ time timing http://www.apple.com -v

    curl_format='{
     "time_namelookup": %{time_namelookup},
     "time_connect": %{time_connect},
     "time_appconnect": %{time_appconnect},
     "time_pretransfer": %{time_pretransfer},
     "time_redirect": %{time_redirect},
     "time_starttransfer": %{time_starttransfer},
      --------------------------------------------------
     "time_total": %{time_total}
    }';

    curl -w "${curl_format}" -o /dev/null -s $@;
    # curl -w "${curl_format}" -o /dev/null -s "${1}";
}
