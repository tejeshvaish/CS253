
for i in range(0,9):
    str1="sample"+str(i)+".txt"
    f = open(str1, "w")

    for j in range(0,9):
        for k in range(0,9):
            pwd= str(i)+str(j)+str(k)
            
            f.write(pwd)
            f.write("\n")
    f.close()

            
