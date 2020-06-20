#include<iostream>


using namespace std;

int main()
{
    int Num;
    cout<<"Enter an Integer:";
    cin>>Num;

    if(Num > 0)
    {
        cout<<"No is positive";
    }
    else if(Num == 0)
    {
        cout<<"Num is 0";
    }
    else
    {
        cout<<"No is negative";
    }
    return 0;
}