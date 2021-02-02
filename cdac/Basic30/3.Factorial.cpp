// WAP to Find Factorial of a number
#include<iostream>

using namespace std;

int main()
{
    int num;
    int fact = 1;
    cout<<"Enter a Number : ";
    cin>>num;
    for(int i = 1; i <= num; i++)
    {
        fact = fact * i;
    }
    cout<<"Factorial of "<<num<<" is "<<fact;
    return 0;
}