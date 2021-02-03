// WAP to Reverse a Number

#include<iostream>

using namespace std;

int main()
{
    int num;
    int remainder;
    int reverseNum = 0;
    cout<<"Enter a Number : ";
    cin>>num;

    while (num != 0)
    {
        remainder = num % 10;
        reverseNum = reverseNum*10 + remainder;
        num = num /10;
    }
    cout<<reverseNum;
    
    return 0;
}