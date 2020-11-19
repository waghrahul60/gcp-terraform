/*Sum Of natural no between */

#include<iostream>


using namespace std;

int main()
{
    int UpperLimit,LowerLimit;
    int result=0,i;
    cout<<"Enter lower limit :";
    cin>>LowerLimit;
    cout<<"Enter lower limit :";
    cin>>UpperLimit;

    for(i=LowerLimit ; i<=UpperLimit ; i++)
    {
        result=result+i;
    }
    cout<<result;

    return 0;
}