#!/bin/bash

#requires at command;

logfile=job_results.log
check=$(which at)
time=19:26




if [ ! $check ]
then 
    sudo apt install at -y
    at $time echo "The script ran at $(date)"

    atq
else
    at $time echo "The script ran at $(date)"

fi

#at
#atq
#atrm
