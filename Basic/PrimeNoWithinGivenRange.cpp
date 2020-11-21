/*Check wether how many prime no within given range*/

#include<iostream>

using namespace std;

void prime(int Num)
{
    int count=0;
    for(int i=1;i<=Num;i++)
    {

        if(Num%i == 0)
        {
            count++;
        }
    }
    if(count==2)
    {
        cout<<Num<<endl;
    }
}

int main()
{

    int UpperLimit,LowerLimit;
    int count=0,i,j;

    cout<<"Enter a Lower limit";
    cin>>LowerLimit;
    cout<<"Enter a upper limit";
    cin>>UpperLimit;


    for(i=LowerLimit;i<=UpperLimit;i++)
    {
        prime(i);
    }
    return 0;
}
    