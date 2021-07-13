filename='sample5.txt'

while read line; do

# echo $(python3 vulnerable.py $line) 

str=$(python3 vulnerable.py $line)
if [[ "$str" != "wrong password, try after 2 seconds" ]] 
then
    # printf $line;
    echo $line > cracked_password.txt;
            pkill bash;

        break 1;

fi


done < $filename ############################################################################
