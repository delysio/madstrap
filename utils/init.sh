#!/bin/bash
#project name is fist argument - check if it is set

if [ -z "$1" ] ; then
    echo "No argument supplied"
    exit 1
fi

#if second argument is 'os' then set OS variable
if [ "$2" == "os" ] ; then
INFILE=start_os.pas
else
INFILE=start_nos.pas
fi

PROJECT_NAME=$1

git clone https://gitlab.com/bocianu/madstrap $PROJECT_NAME
cd $PROJECT_NAME
rm -rf .git
cp $INFILE ${PROJECT_NAME}.pas
sed -i -e 's/program madStrap;/program '${PROJECT_NAME}';/g' ${PROJECT_NAME}.pas
sed -i -e 's/NAME=start_nos/NAME='${PROJECT_NAME}'/g' -e 's/ADDINTRO=1/ADDINTRO=0/g' build.bat

rm start_*.pas

