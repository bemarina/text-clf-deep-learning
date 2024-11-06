#!/bin/bash

# to run this file
## bash prepareData.sh 

# this works too, because I have execute permissions chmod +x prepareData.sh
#./prepareData.sh 

echo 'Hello'

minfile=4
maxfile=11
outputFile='.dataFiles/outputDF.csv'

touch $outputFile

fileHeader='index,filing_text'
echo $fileHeader > $outputFile 

# finalFile='sepContoursSlice'$ii'ROI'$roiNum'.xml'
# touch $finalFile

for index in `seq $minfile $maxfile`;
    do  
        txtfile='.dataFiles/'$index'.txt'
        #text=$(cat $txtfile)
        # replaces every character that is not a letter with a space, then transforms upper case to lower case
        text=$(cat $txtfile | sed 's/[^a-zA-Z ]/\ /g' | tr '[:upper:]' '[:lower:]' )
        
        newline=$index','$text 
        
        echo $newline >> $outputFile
        
        #cat $line >> $outputFile
        
    done



