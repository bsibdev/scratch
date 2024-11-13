#!/bin/bash
myname="bsibdev"
myage="26"

echo "Hello, my nme is $myname. I am $myage years old."

#use subshell to set a variable equal to the output of a command.
dir=$(pwd)
files=$(ls)

now=$(date)

echo "Files in $dir are:"
echo "$files"
echo "as of $now"

# $USER is an environment variable. environment variables are in all preset and always fully capitalized.
# best practice is to not capitalize personal variables to avoid confusion.
#environment variables can be listed with an env command.