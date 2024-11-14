#!/bin/bash

mynum=300

#if [ $mynum -eq 200 ]
#then
#    echo "The condition is true."
#else
#    echo "The condition is false."
#fi

myfile=if.sh

 if [ -f ./if.sh ]
 then
    echo "$myfile is in current directory."
else
    echo"$myfile is missing from the current directory."
fi

#which command checks if a given program is installed.

program="rootietootie"
check=$(which $program)

<<comment
if [ ! $check ]
then
    echo "$program not found."
    echo "Attempting to install..."
    sleep 3
    echo "$program installed."
else
    echo "$program found. Dependency satisfied"
fi
comment

check=$(which tailscale)
command=tailscale

#test if tailscale command is available, install if not, and find status afterwards.
if ! command -v $command
then   
    echo "tailscale status did not work. Program may not be installed."
    echo "installing now..."
    curl -fsSL https://tailscale.com/install.sh | sh
    tailscale status
else
    tailscale status
fi

