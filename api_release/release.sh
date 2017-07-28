#!/bin/bash -

if [ ! $# -eq 1 ]
then
    echo 'please input version!'
    exit 1;
fi

base_path='/home/xiejinghua/mmd-api/version';
cd version_base
git pull
cd ..
cp -R version_base "$base_path/$1"
cd "$base_path/$1"
mv app/routes.php app/routes.php.bak
mv app/routes.php.bak1 app/routes.php
#/home/xiejinghua/bin/composer.phar install -vvv --no-progress
