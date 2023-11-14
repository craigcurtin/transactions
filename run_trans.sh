#!/usr/bin/env bash

set -x 

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


# after the image name are the arguments passed in to source file
podman run -v /Users/craigcurtin/tmp:/tmp -it transaction transactions.py --debug 10 -u -o /tmp/transactions.csv  --number_transactions  50

