#include<iostream>

using namespace std;

int main()
{
    int arr[6]={5,8,3,4,1,9};
    int Largest = arr[0];       //5

    for(int i=0; i<=5; i++)
    {
        if(arr[i] > Largest)
        {
            Largest = arr[i];
        }
    }
    cout<<"largest Element Is :"<<Largest;
    return 0;
}