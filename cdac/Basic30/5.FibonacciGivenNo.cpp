//WAP to Display Fibonacci series up to a given
#include<iostream>

using namespace std;

int main()
{
    int num ;
    int firstNo = 0;
    int secondNo = 1;
    int nextNo = 0;
    cout<<"Enter a Number : ";
    cin>>num;

    cout<<"Fibonacci Series: ";


    cout<<firstNo<<" ";
    cout<<secondNo<<" ";
    nextNo = firstNo + secondNo;
    while(nextNo <= num)
    {
        cout<<nextNo<<" ";
        firstNo = secondNo;
        secondNo = nextNo;
        nextNo = firstNo + secondNo;
    }
   
    return 0;
}