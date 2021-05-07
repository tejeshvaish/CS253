filename='sample0.txt'
trap 'pkill bash' SIGTSTP
echo "0" > counter.txt;
echo $filename
while read line; do

# echo $(python3 mitigated.py $line) 

str=$(python3 mitigated.py $line)
cat counter.txt
echo "\n";
if [[ "$str" != "wrong password, try after 2 seconds" ]] 
then
    # printf $line;
    echo "was here";
    echo $line > cracked_password.txt;

    break 1;
fi


done < $filename ############################################################################
echo "0" > counter.txt;
