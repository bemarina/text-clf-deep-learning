#!/bin/bash

# to run this file
## bash prepareData.sh 

# this works too, because I have execute permissions chmod +x prepareData.sh
#./prepareData.sh 

echo 'Hello'

minfile=4
maxfile=4

for index in `seq $minfile $maxfile`;
    do  
        txtfile='.dataFiles/'$index'.txt'
        #text=$(cat $txtfile)
        # text=$(cat $txtfile | tr "," " " | tr ">" " " | tr "<" " " | tr -d '0123456789')
        # text=$(cat $txtfile | tr '0123456789' ' ' | tr -dc '[:alnum:]\n\r' | tr '[:upper:]' '[:lower:]')
        #text=$(cat $txtfile | tr '0123456789' ' ' | tr -d '[:cntrl:]' | tr '[:upper:]' '[:lower:]')
        text=$(cat $txtfile | sed 's/[^a-zA-Z ]//g' | tr '[:upper:]' '[:lower:]' )
        echo $text
        #string=${string// /.}

    done



