#! /bin/sh
# This is a simple demonstration of a recursive algorithm
echo "Enter a positive number to be divided by two: "
read number

division-by-two(){
  if (( $number > 2  )); then
      number=$(($number / 2))
      echo $number
      #this is the recrusive call
      division-by-two
  fi
}

division-by-two
