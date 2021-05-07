import java.util.Scanner;  // Import the Scanner class

class Simple
{
public static void main(String args[])
{
    

Scanner myObj = new Scanner(System.in);  // Create a Scanner object

int Password = "HOHOOO";
int pwd=myObj.next();

if ( pwd == Password )
{System.out.println("Welcome ROOT");}

else
{System.out.println("wrong password");}

}
}
