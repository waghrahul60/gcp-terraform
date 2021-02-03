//WAP to Program to Check Prime Number or not

#include<iostream>

using namespace std;

int main()
{
    int num;
    bool flag = true;
    cout<<"Enter a Number : ";
    cin>>num;
    if(num ==0 || num == 1)
    {
       flag = false;
    }

    for(int i = 2; i<=num/2; i++)
    {
        if(num%i == 0)
        {
            flag = false;
            break;
        }
    }
    if(flag)
    {
        cout<< num<<"  is prime Number";
    }
    else{
        cout<< num<<"  is Not prime Number";
    }
    return 0;
}