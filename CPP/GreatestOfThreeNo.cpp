
#include<iostream>


using namespace std;

int main()
{
    int num1,num2,num3;
    int result=0,i;
    cout<<"Enter lower limit :";
    cin>>num1;
    cout<<"Enter lower limit :";
    cin>>num2;
    cout<<"Enter lower limit :";
    cin>>num3;

   if(num1 > num2 && num1 >num3)
    {
        cout<<"Greatest No is "<<num1;
    }

    else if(num2 > num1 && num2 >num3)
        {
            cout<<"Greatest No is "<<num2;
        }
   else
        {
             cout<<"Greatest No is "<<num3;
        }   
    return 0;
}