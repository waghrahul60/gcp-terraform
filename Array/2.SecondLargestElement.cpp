#include<iostream>

using namespace std;

int main()
{
    int arr[6]={4,8,6,2,3,7};
    int Max = arr[0];
    int SecondMax=arr[1];

    for(int i=0; i<=5; i++)
    {
        if(arr[i] > Max)
        {
        	SecondMax = Max;
            Max = arr[i];
        }
        else if(arr[i] > SecondMax && arr[i] != Max)
        {
        	SecondMax = arr[i];
		}
    }
    
    /*for(int i=0; i<=5; i++)
    {
        if(arr[i] > SecondMax && arr[i] < Max)
        {
            SecondMax = arr[i];
        }
    }*/

    cout<<"max"<<Max<<endl;
    cout<<"Second max"<<SecondMax;

    return 0;
}