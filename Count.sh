#!/bin/bash
inputString=$1
inputChar=$2
countOccurance
countOccurance=`$inputString | tr -cd $inputChar | wc -c`
echo "$inputChar occurs $countOccurance times"