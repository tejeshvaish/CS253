#!/bin/bash

filename='sample.txt'
echo "" > new.txt
echo "" > S.txt;

while read line; do

echo $(./executable 190908 $line) 
str=$(./executable 190908 $line)
if[[ "$str" != "Wrong password"]] 
then
    printf $line;
fi

# reading each line
# echo "TEST No. $n : $line"
# echo "$line" > inputFileInside.txt;
# echo $line 
# g++ -fprofile-arcs -ftest-coverage coverage.cpp -o coverages
# ./coverage < inputFileInside.txt;
# echo $(gcov -b -c coverage | grep Branches | cut -d':' -f 2 | cut -d'%' -f 1) >> new.txt
# printf "===========================================\n"
# cov=$(gcov -b -c coverage | grep Branches | cut -d':' -f 2 | cut -d'%' -f 1)
# rm coverage.gcda
# n=$((n+1))

# echo "$line" >> S.txt;


done < $filename #########################@###################################################


