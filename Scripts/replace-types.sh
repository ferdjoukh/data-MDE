#!/bin/bash

# This script is used to replace String and Integer types in old Ecore files.
# They are translated into EString and EInt

# PARAMS
#  $1 ecore file to change

grep -re "#/0/String" "$1"

sed -re 's/#\/0\/String/ecore:EDataType http:\/\/www.eclipse.org\/emf\/2002\/Ecore#\/\/EString/g' "$1" > "$1-2"
sed -re 's/#\/0\/Integer/ecore:EDataType http:\/\/www.eclipse.org\/emf\/2002\/Ecore#\/\/EInt/g' "$1-2" > "$1-3"
