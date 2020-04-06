#! /usr/local/bin/bash

search() {
  echo -n "Please enter the any detail of the person to be searched: "
  read name

  result=`grep $name .data`
  if [ "$?" -eq 0 ]
  then
    echo "Details of the person"
    echo $result | awk -F: '{print "name: " $1 ", surname: " $2 ", phone: " $3 ", email: " $4}'
    return 0
  else
    echo "No such person exists"
    return 1
  fi
}

# search