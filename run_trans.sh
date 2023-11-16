#!/usr/bin/env bash

set -x 

DEBUG="true"

# run-time Python Application flag Notes: 
# --debug 10      (sets DEBUG logging level), DEBUG==10, INFO==20
# -u              (enables unique file name)
# -o              (sets up output file)
#
# --debug 
# -u 
# -o "/tmp/transactions.csv" 
# --number_transactions 12345 
# --date_of_service "1970-01-01"


if [[ ${DEBUG} == "true" ]] ; then
    podman run -v /Users/craigcurtin/tmp:/tmp -it transaction transactions.py --debug 10 -u -o /tmp/transactions.csv  --number_transactions  50
else
    # logging.INFO
    podman run -v /Users/craigcurtin/tmp:/tmp -it transaction transactions.py --debug 20 -u -o /tmp/transactions.csv  --number_transactions  50
fi

ls -al $HOME/tmp/*.csv
