#!/bin/bash

if [ $# -ne 2 ]
then
    echo "Two arguments required"
    exit 1
fi

if ! command -v rsync > /dev/null 2>&1
then
    echo "This script requires rsync."
    exit 2
fi

current_date=$(date +Y-%m-%d)

rsync_options="-avb --backup-dir $2/current_date --delete --dry-run"

 $(which rsync) $rsync_options $1 $2/current >> backup_$current_date.log