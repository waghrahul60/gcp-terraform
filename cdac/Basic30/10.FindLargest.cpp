//WAP to Find the largest number among the given numbers


#include<iostream>

using namespace std;

int main()
{
    int num1;
    int num2;
    cout<<"Enter a Number 1 : ";
    cin>>num1;
    
    cout<<"Enter a Number 2 : ";
    cin>>num2;

    if(num1 > num2)
    {
        cout<<num1<<" is greater!!!";
    }else{
        cout<<num2<<" is greater!!!";
    }
    return 0;
}