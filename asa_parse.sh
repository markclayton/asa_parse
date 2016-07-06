#!/bin/bash

# asa_parse - A quick script to parse a Cisco ASA firewall log into the following format [date,action,source,dest]
# Author: Mark Clayton
# Note: The bulk of the code is in the included run.awk file. 

NAME=$(echo $1 | cut -d '.' -f1)
OUT_EXTENSION=".csv"
OUTFILE=$NAME$OUT_EXTENSION
echo "date,action,source,dest" > $OUTFILE
./run.awk $1 | sort | uniq >> $OUTFILE 
