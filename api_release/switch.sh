#!/bin/bash -

if [ ! $# -eq 1 ]
then
    echo 'please input switch version!'
    exit 1
fi

path=/home/xiejinghua/mmd-api/version/$1
if [ ! -d "$path" ]; then
    echo 'switch directory not find'
    exit 1
fi

echo $1 > /home/xiejinghua/mmd-api/version.txt
