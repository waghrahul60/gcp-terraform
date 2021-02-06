#include<iostream>

using namespace std;


int countOfElements(int arr[], int n, int x) 
{
    int small = 0;
    for(int i = 0; i<n;i++)
    {
        if(arr[i] <= x)
        {
            small++;
        }
    }
    return small;
}

void printArray(int arr[], int n) 
{ 
    for (int i = 0; i < n; i++) 
        cout << arr[i] << " "; 
} 

int main()
{
    int arr[] = { 1, 2, 3, 4, 5 }; 
    int n = sizeof(arr) / sizeof(arr[0]); 
    
    printArray(arr, n); 
    int a = countOfElements(arr,n,9);
    cout<<"No of elements = "<<a;
}