#include<iostream>

using namespace std;

int main()
{
    static int SIZE=0;
    int arr[SIZE];
    int a;
    
    while(1)
    {
        cin>>a;
        if(a==-1)
        {
           break;
        }else
        {
            arr[SIZE]=a;
             SIZE++;
        }
        
    }

    cout<<"fdshgfdh";
    for(int i=0; i<SIZE;i++)
    {
        cout<<"fdg "<<arr[i];
    }
    return 0;
}