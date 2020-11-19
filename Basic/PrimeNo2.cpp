/*Check wether The No is prime or not*/

#include<iostream>

using namespace std;

int main()
{
    int Num,i,flag=0;
    int count=0;
    cout<<"Enter a number:";
    cin>>Num;
    for(i=2;i<=Num/2;i++)
    {
        if(Num%i == 0)
        {
           flag=1;
           break;
        }
    }

    if(Num==1)
    {
        cout<<"i is nither prime nor composite";
    }
    else{
         if(flag==0)
            {
                cout<<Num<<" is a prime";
            }
            else
            {
                cout<<Num<<" Not a prime";
            }


    }
    return 0;
}