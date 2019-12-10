#!/bin/bash



if [ $# -lt 1 ]; then  
#  echo "Usage: $0 name(s)" 
  exit 1 
fi

while (($#));do
    echo "Hi $2"
     shift
done


