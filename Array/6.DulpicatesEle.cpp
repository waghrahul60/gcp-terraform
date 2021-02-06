#include<iostream>

using namespace std;

 void remove_duplicate(int arr[],int n){
        for(int i = 0; i<n; i++)
        {
            for(int j = i+1; j<n;j++)
            {
                if((arr[i]==arr[j]) && (i != j))
                {
                    cout<<arr[j]<<" ";
                }
            }
        }
}

 int remove_duplicate2(int a[],int n){
        // code here
        int c =1;
        for(int i=1; i<n; i++)
        {
            if(a[i] != a[i-1])
            {
                a[c++] = a[i];
            }
        }
        return c;
    }


void printArray(int arr[], int n) 
{ 
    for (int i = 0; i < n; i++) 
        cout << arr[i] << " "; 
} 

int main()
{
    int arr[] = { 1, 2, 3, 2, 4 }; 
    int n = sizeof(arr) / sizeof(arr[0]); 
    
    printArray(arr, n); 
    remove_duplicate(arr,n);

    int arr2[] = { 1, 2,2 }; 
    int a = remove_duplicate2(arr2,n);
    cout<<"Duplicate element is = "<<a;
}