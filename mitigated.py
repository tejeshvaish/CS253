# Hi this the program to demonstrate some mitigated program
import os
import time
import sys
# print('Length of list:', len(sys.argv))
# print(sys.argv)

pwd = sys.argv[1]
if(len(sys.argv) > 2):
    name = sys.argv[2]
# pwd = input("pls enter password to execute the script \n")
f = open("pwd.txt","r")
Password= f.readline()
Password= Password[:-1]                     #  <-------- removed next line character from password
# Password = "127"                              removed the hardcoded password error. I use txt file here, in real world, a hash protected database could be used to store the randomized hash of the password
# print(Password)
# print(pwd == Password)
g= open("counter.txt","r+")
# print(g.readline)
counter = int(g.readline())
# print(counter)
# class My_class:
    # counter =0
# print("\n",counter<4)
# print("\n",pwd == Password)
if (pwd == Password and counter<=4):                #mitigated the CWE-307 by adding the static counter for the number
                                                            # of attempts made to attack this program. 
    if(len(sys.argv) < 2):
        # of attempts made to attack this program.

        print("Welcome! Please enter your First name\n")
        name = input()
        if name.isalpha():  # --------> Mitigated this scope of code injection by limiting the
            # set of acceptable inputs ,i.e, input validation.
            print("Nice Name")
            command = "bash code_injection.sh "+name
            os.system(command)
        else:
            print("Dont inject me with code")

    else:
        # --------> Mitigated this scope of code injection by limiting the
        if name.isalpha():
            # set of acceptable inputs ,i.e, input validation.
            print("Nice Name")
            command = "bash code_injection.sh "+name
            os.system(command)
        else:
            print("Dont inject me with code")


elif(counter<=4):
    counter = counter+1
    g.seek(0)
    g.write(str(counter))
    g.truncate()
    g.close()
    print("wrong password, try after 2 seconds\n")
    time.sleep(2)



