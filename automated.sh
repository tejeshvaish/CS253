#!/bin/bash

echo "First I will run the test cases, which the program was supposed to perform ";
printf "====================================================================================\n";

python3 vulnerable.py 127  Tejesh #pwd is 127 
python3 vulnerable.py 127  prantik #pwd is 127 
python3 vulnerable.py 127  Sumit #pwd is 127 
python3 vulnerable.py 127  Vihari #pwd is 127 
python3 vulnerable.py 127  Vishal #pwd is 127 
python3 vulnerable.py 127  Sourav #pwd is 127 
python3 vulnerable.py 127  Yugesh #pwd is 127 
python3 vulnerable.py 127  Pankaj #pwd is 127 
python3 vulnerable.py 127  Yash #pwd is 127 
python3 vulnerable.py 127  Abbhishek #pwd is 127
python3 vulnerable.py 127  Shatroopa #pwd is 127 
python3 vulnerable.py 127  Sujit #pwd is 127 


printf "===================================================================================\n\n";
echo "Attacker uses code injection for accessing sensitive data ";
echo " ";

printf "\n------------ ls -l ------------\n"

python3 vulnerable.py 127  Tejesh ; ls -l 

printf "\n------------ pwd------------\n"

python3 vulnerable.py 127  Tejesh ; pwd 

printf "\n------------ echo -----------\n"

python3 vulnerable.py 127  Tejesh ; echo "code injection" #pwd is 127 

# printf "\n------------ 1sd input------------\n"


printf "=============================== building cwe-798 ===========================================================================\n\n";
gcc -o a -fno-stack-protector CWE_798.c;
printf "\n\n==============strings ./a  revealed that pwd is HOHO from binary file!========================" 
printf "\n------------ 1sd input------------\n"

cat input/in1.in
./a < input/in1.in

printf "\n------------2nd input------------\n"
cat input/in2.in

./a < input/in2.in

printf "\n------------ 3rd input------------\n"

cat input/in3.in

./a < input/in3.in  



printf "\n\n Now Runining the mitigated files which are full proof against these attacks atleast :p ======================="

bash script_mitigated_test.sh 

printf "\n These check only 4 times now, as the static counter is included, thus solving 307 \n";

printf "\n\n===========now lets check code injecting!============================================================\n"

python3 mitigated.py 127 "Tejesh"
python3 mitigated.py 127 "Vihari"
python3 mitigated.py 127 "Sumit"

python3 mitigated.py 127 "Tejesh ; ls -l"
python3 mitigated.py 127 "Tejesh ; pwd"
printf "\n\n================Hence, code injection did not work!!==========="
printf "\n\n==============================Now, lets exploite the vulnerebility of the 307======================================================"

python3 genrate_pwd.py
printf "\n================= random Passwords genrated !========================";


printf "\n\n===============wait for 2 min for the password to crack==============================="
bash main_script.sh

# printf "Cracked PWD:--->>"
# cat cracked_password.txt

printf "\n \n========================== Password will be printed at End Thank you ====================================>>>>> "
