#!/bin/bash -
date=`date +%Y-%m-%d_%H%M%S`
sh release.sh $date
if [ $? = 0 ]
then
    sh switch.sh $date
    echo $date
fi
