/*Check wether The No is prime or not*/

#include<iostream>

using namespace std;

int main()
{
    int Num,i;
    int count=0;
    cout<<"Enter a number:";
    cin>>Num;
    for(i=1;i<=Num;i++)
    {
        if(Num%i == 0)
        {
            count++;
        }
    }

    if(count==2)
    {
        cout<<Num<<" is a prime";
    }
    else
    {
        cout<<Num<<" Not a prime";
    }
    return 0;
}