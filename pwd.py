
from string import ascii_lowercase
a = "190908"
pwd="190908"
list1=[]

# for i in range(start_pos, len(my_string)):
#    print(my_string[i])
f = open("sample.txt", "w")
# integer = 10
# f.write(str(integer))
for i in range(0,len(a)):
    for j in range(0, len(a)):
        # for q in a:
        for p in ascii_lowercase:
            for q in ascii_lowercase:
                
                pwd = list(pwd)
                pwd[i]=p
                pwd[j]=q

                f.write("".join(pwd))
                f.write("\n")
                # list1.append("".join(pwd))
                pwd="190908"

f.close()

        
                




