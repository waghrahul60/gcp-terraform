#include<iostream>


using namespace std;

int main()
{
    int Num;
    int i, result=0;
    cout<<"Enter an how many no u want :";
    cin>>Num;
/*
    for(i=0 ; i<=Num ; i++)
    {
        result=result+i;
    }
    cout<<result;
*/

    result=Num*(Num+1)/2;

    cout<<result;
    return 0;
}