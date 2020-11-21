/*Program to reverse a number*/

#include<iostream>

using namespace std;

int main()
{
   int num;
   int rem,reverse=0;
   cout<<"Enter a number : ";
   cin>>num;


    while (num > 0)
    {
       rem = num % 10;
       reverse = reverse*10 + rem;
       num = num/10;
    }
    
    cout<<"Reverse is : "<<reverse;


    return 0;
}
