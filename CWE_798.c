#include<stdio.h>
#include<string.h>
#define max_len 6   
 void main()
    {
        char Password [max_len] = "HOHO";    // ----------> Mitigated program will not contain the hard - coded password, 
                                            // but will access the password through a hash secured data base , etc. 
        char pwd[max_len];
        scanf("%s",pwd);
        // printf("%s",pwd);

        if ( !strncmp(pwd,Password,3))
        {
            printf("Welcome ROOT");
        }

        else
        {
            printf("wrong password");
        }
    }
