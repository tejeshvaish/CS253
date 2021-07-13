#!/bin/bash
trap 'pkill bash' SIGTSTP
for i in 0 1 2 3 4 5 6 7 8 
do

bash script_${i}.sh &

done
