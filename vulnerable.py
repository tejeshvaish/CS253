# Hi this the program to demonstrate some common software vulnerabilities.
import os
import time 
import sys
# print('Length of list:', len(sys.argv))
# print(sys.argv)

pwd = sys.argv[1]
if(len(sys.argv)>2):
    name = sys.argv[2]
# pwd = input("pls enter password to execute the script \n")

Password = "127"

if ( pwd == Password ):

    if(len(sys.argv)>=2):
        command = "bash code_injection.sh "+name
        os.system(command)

    else:
        print("Welcome! Please enter your name\n")
        name = input()
        command = "bash code_injection.sh "+name
        os.system(command)
    # print(command)


else:
    print("wrong password, try after 2 seconds\n")
    time.sleep(2)












