#!/bin/sh

files=("./PATIENT_00"  "./PATIENT_01" "./PATIENT_02"  "./PATIENT_03"  "./PATIENT_04"  "./PATIENT_05" "./PATIENT_06" "./PATIENT_07" )

for f in "${files[@]}"
do
          echo proessing $f
          
          ### add double quotes to each field if not having already
          ### replace commma inside field with empty space
          ### change output field separator from tab to comma
          
          awk '{for(i=1; i<=NF; i++)  -e gsub(/^"*|"*$/, "\"", $i)  -e gsub(/,/," ", $i)}1' FS='\t' OFS=','  $f > "${f}_updated"
          
          sed -i 's/^M//' "${f}_updated"
          
          echo "${f}_updated done"

done
~
~
