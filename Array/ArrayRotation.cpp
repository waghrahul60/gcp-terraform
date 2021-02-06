#include<iostream>

using namespace std;

void leftRotate(int arr[],int n)
{
     int temp = arr[0],i;
    for ( i = 0; i < n-1; i++) 
        arr[i] = arr[i + 1];
    
    arr[i] = temp;

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
    for(int i =0; i<2;i++)
    {
     leftRotate(arr, n);    
    }
    printArray(arr, n); 
}