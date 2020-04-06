#!/usr/local/bin/bash

declare -A field_mapping=(
  [name]=1
  [surname]=2
  [phone]=3
  [email]=4
)

update() {
  echo -n "Enter the person name to be updated: "
  read name
  result=`grep $name .data`
  new_result=$result
  if [ "$?" -eq 0 ]
  then
    echo "Person $name found. Please enter the field to be updated in format [field1=new_value,field2=new_value] (without space)"
    read inp
    new_vals=`echo $inp | tr ',' '\n'`
    for i in ${new_vals[@]}
    do
      key=`echo $i | cut -d= -f1`
      value=`echo $i | cut -d= -f2`
      ind=${field_mapping[${key}]}
      update_this=`echo $result | cut -d: -f${ind}`
      new_result=`echo $new_result | sed s/$update_this/$value/`
    done
    `sed -i'.bak' s/$result/$new_result/ .data`
    if [ "$?" = 0 ]
    then
      echo "Record updated successfully"
      return 0
    else
      echo "Some issue in updating the record"
      return 2
    fi
  else
    echo "couldn t find the person with name $name"
    return 1
  fi
}

#update