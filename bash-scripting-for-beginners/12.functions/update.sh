#!/bin/bash

release_file=/etc/os-release
log_file=/var/log/updater.log
error_log=/var/log/updater_error.log

check_exit_status() {
    if [ $? -ne 0 ]
    then
        echo "An error occured, please check the $errorlog file"
    fi
}



if grep -q "Arch" $release_file
then
    sudo pacman -Syu 1>>$log_file 2>>$error_log
    check_exit_status
fi

if grep -q "Ubuntu" $release_file || grep -q "Debian" $release_file
then
    sudo apt update && sudo apt dist-upgrade 1>>$log_file 2>>$error_log
    check_exit_status
fi