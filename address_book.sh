#!/usr/local/bin/bash

# Source the libs

. ./add.sh
. ./search.sh
. ./delete.sh
. ./update.sh

echo "Welcome to Address book !!!"
echo "Please select the operation you want to perform [s - search | a - add | d - delete | u - update]"

read opr
while [ -n "$opr" ]
do
  case $opr in
    's')
      search
    ;;
    'a')
      add
    ;;
    'd')
      delete
    ;;
    'u')
      update
    ;;
    *)
      echo "Invalid operation"
    ;;
  esac
  echo "----------------------------------------------------------"
  echo "Perform other operation or press ENTER to exit the program"
  echo "----------------------------------------------------------"
  read opr
done