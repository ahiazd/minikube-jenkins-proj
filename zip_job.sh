#!/bin/bash

check_arr() {

#Validation check - if elemnts in array equal to the text files that created 

 numOfFiles=`ls -lart | grep .txt | wc -l`

 if [[ $numOfFiles == $items ]]; then
	  echo "txt files created successfully"
    else
	 echo "txt files not created - please check..."
	 exit 1
   fi	 
}

#Create the zip files accordingly to the items in the array 

createZipFile() {
for j in ${arr[@]}
 do
	txtfile=`ls -lart | grep $j.txt | awk {'print $9'}`
	zip ${j}_${VERSION}.zip $txtfile
done
	
}

#Validation check - if zip files crated accordingly to the elmetns in array

checkZipFile() {
zipfiles=`ls -lart | grep _${VERSION}.zip | wc -l`

 if [[ $zipfiles == $items ]]; then
          echo "ZIP files created successfully"
    else
         echo "ZIP files not created as excpcted - please check..."
         exit 1
   fi

}

#MAIN
#The script is adopted also for N elments (in case we set the array dynimcally)

arr=(a b c d)
 for i in ${arr[@]};
 do 
 touch $i.txt
 done

items=${#arr[@]};

check_arr
createZipFile
checkZipFile
