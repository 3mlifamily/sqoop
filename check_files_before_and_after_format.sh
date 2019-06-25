#!/bin/bash

files=( "PATIENT_00" "PATIENT_01" "PATIENT_02" "PATIENT_03" "PATIENT_04"  "PATIENT_05" "PATIENT_06" "PATIENT_07" )

for f in "${files[@]}"
do
       echo "<----- before update: ${f} ------->"
       head -1 $f
       echo "<----- after update: ${f}_updated   ------->"
       head -1 "${f}_updated"
done
~
~
~
