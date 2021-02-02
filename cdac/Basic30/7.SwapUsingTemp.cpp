//WAP to Swap two numbers using temporary variable
#include<iostream>

using namespace std;

int main()
{
    int num1;
    int num2;
    int temp;
    cout<<"Enter Number A : ";
    cin>>num1;
    cout<<"Enter Number B : ";
    cin>>num2;

    cout<<"Before Swaping : "<<endl;
    cout<<"A = "<<num1<<endl;
    cout<<"B = "<<num2<<endl;

    temp = num1;
    num1 = num2;
    num2 = temp;

    
    cout<<"After Swaping : "<<endl;
    cout<<"A = "<<num1<<endl;
    cout<<"B = "<<num2<<endl;

    return 0;
}