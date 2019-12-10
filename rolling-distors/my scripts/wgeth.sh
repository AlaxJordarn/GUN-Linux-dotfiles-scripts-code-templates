#!/bin/bash
echo "Enter the website name:"  
echo "**********************"
read -r string ;
firejail wget -qO-  $string | sed -e 's/<[^>]*>//g' |  sed -r '/^\s*$/d'
