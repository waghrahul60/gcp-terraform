//WAP to Display Fibonacci series
#include<iostream>

using namespace std;

int main()
{
    int num;
    int firstNo = 0;
    int secondNo = 1;
    int nextNo = 0;
    cout<<"Enter a Number of Elements Upto : ";
    cin>>num;

    cout<<"Fibonacci Series: ";


    cout<<firstNo<<" ";
    cout<<secondNo<<" ";
    for(int i = 2; i <= num; i++)
    {
        nextNo = firstNo + secondNo;
        firstNo = secondNo;
        secondNo = nextNo;

        cout<<nextNo<<" ";
    }
   
    return 0;
}