#include<iostream>

using namespace std;

int main(){
    int arr[6] = {10,20,30,40,50,60};
    int count = 0;

    for(int i = 0; i<=6; i += 2)
    {
        cout<<arr[i]<<" ";
        count++;
    }
    cout<<"Sum is = "<<count;

    cout<<"Reverse Array is = ";
    for(int i = 6;i>=0;i--)
    {
        cout<<arr[i]<<" ";
    }
    return 0;
}