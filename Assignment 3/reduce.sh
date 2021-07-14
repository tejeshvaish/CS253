#!/bin/bash
cd test/
filename='results.txt'
echo "" > new.txt
echo "" > red_test_cases.txt;

n=0;
m=2;
g++ -fprofile-arcs -ftest-coverage coverage.cpp -o coverage
cov=0;
last_cov=0;
max="$1"
last_test_cases='result.txt'
while (( $(echo $m '<' $max |bc -l) )); do 

python3 fcm.py $m
    n=0
    while read line; do
    # reading each line
    # echo "TEST No. $n : $line"
    echo "$line" > inputFileInside.txt;
    # echo $line 
    # g++ -fprofile-arcs -ftest-coverage coverage.cpp -o coverages
    ./coverage < inputFileInside.txt;
    echo $(gcov -b -c coverage | grep Branches | cut -d':' -f 2 | cut -d'%' -f 1) >> new.txt
    # printf "===========================================\n"
    cov=$(gcov -b -c coverage | grep Branches | cut -d':' -f 2 | cut -d'%' -f 1)
    # rm coverage.gcda
    n=$((n+1))
    
    echo "$line" >> red_test_cases.txt;



    if (( $(echo $cov '>' 95 |bc -l) )); then
        printf "===========================================\n"

        echo "This is the minimum number of test cases required !!"
        echo $n;
        
        printf "===========================================\n"


        break 2
    fi 
    # echo $m;
    done < $filename #########################@###################################################
    echo "Branch Coverage for this test_suit subset :"$cov;

    if (( $(echo $last_cov '>=' $cov+0.01 |bc -l) )); then
    printf "===========================================\n"

    echo "This is the minimum number of test cases required !!"
    echo "+++++++++++++++>>>>"$m"<<<<+++++++++++";
    printf "===========================================\n"
    echo "maximum coverage"
    echo $cov 
    printf "===========================================\n"
    cat last_test_cases > red_test_cases.txt
    n=$m
    break 1
    fi
    ###################################################################3
    last_cov=$cov;
    
    echo "------------------------------------ for "$m"  test_Cases " >> new.txt; 
    # echo $(gcov -b -c coverage | grep Branches | cut -d':' -f 2 | cut -d'%' -f 1) >> new.txt
    printf "===========================================\n"
    m=$((2*m));
    rm coverage.gcda;
    cat red_test_cases.txt > last_test_cases;
    echo "" > red_test_cases.txt;
##########################################################################
done
echo "------------------------------------ for "$n"  test_Cases " >> new.txt; 



# printf "Now printing the reduced test suite\n\n";
# cat red_test_cases.txt
# echo "" > red_test_cases.txt;
printf "===========================================\n"

printf "\n\n Its coverage is \n";
cat new.txt
printf "===========================================\n"

printf "\nThe number of reduced test case: \n";
echo $n
printf "===========================================\n"
printf "Now printing the reduced test suite from red_test_cases.txt\n\n";
cat red_test_cases.txt
printf "===========================================\n"