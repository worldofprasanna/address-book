#!/bin/bash

echo "Welcome to Address book !!!"
echo "Please select the operation you want to perform [s - search | a - add | d - delete | u - update]"

read opr
while [ -n "$opr" ]
do
  case $opr in
    's')
      echo "You have chosen to search the address book"
    ;;
    'a')
      echo "You have chosen to add data to address book"
    ;;
    'd')
      echo "You have chosen to delete data from address book"
    ;;
    'u')
      echo "You have chosen to update data in the address book"
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