#include<iostream>

using namespace std;

int main()
{
    int arr[6]={4,8,6,2,3,7};
    int Small = arr[0];
    int SecondSmall = arr[1];

    for(int i=0; i<=5; i++)
    {
        if(arr[i] < Small)
        {
        	SecondSmall = Small;
            Small = arr[i];
        }
        else if(arr[i] < SecondSmall && arr[i] != Small)
        {
        	SecondSmall = arr[i];
		}
    }
    cout<<"Small"<<Small<<endl;
    cout<<"Second Small"<<SecondSmall;

    return 0;
}