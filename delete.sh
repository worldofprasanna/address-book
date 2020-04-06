#!/bin/bash

delete() {
  echo -n "Enter the name of the person to be deleted: "
  read name

  result=`grep $name .data`
  if [ "$?" -eq 0 ]
  then
    `sed -i'.bak' /${result}/d .data`
    if [ "$?" -eq 0 ]
    then
      echo "Record $name deleted successfully."
      return 0
    else
      echo "Some issue with deleting the record. Please check the permission"
      return 2
    fi
  else
    echo "No such person exists"
    return 1
  fi
}

# delete