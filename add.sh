#!/bin/bash

add() {
  echo "Enter the details of the person to be added"
  echo -n "Name: "
  read name
  echo -n "Surname: "
  read surname
  echo -n "phone: "
  read phone
  echo -n "email: "
  read email

  touch .data
  echo "$name:$surname:$phone:$email" >> .data
  echo "Added this person $name successfully."
}

#add