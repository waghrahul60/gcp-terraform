// WAP to Check if a Number is Positive or Negative
#include<iostream>

using namespace std;

int main(){
    int num;
    cout<< "Enter a number: ";
    cin>>num;

    if (num >= 0)
    {
        cout<< num << " is Positive Number";
    }
    else
    {
        cout<< num << " is Negative Number";
    }
    return 0;
}