//WAP to Program to Check Palindrome
#include<iostream>

using namespace std;

int main()
{
    int num ;
    int reverseNum = 0;
    int remainder;
    int n = num;
    cout<<"Enter a Number : ";
    cin>>num;
    
    while(n != 0)
    {
        remainder = n%10;
        reverseNum = reverseNum*10 + remainder;
        n = n/10;
    }

    if(num == reverseNum)
    {
        cout<<num<<" is Palindrome Number!!!!!";
    }
    else
    {
        cout<<num<<" is Not a Palindrome Number!!!!";
    }
    return 0;
}