//WAP to Check whether an alphabet is vowel or consonan
#include<iostream>

using namespace std;

int main()
{
    char c;
    cout<<"Enter a latter : ";
    cin>>c;
    if((c=='a'||c=='e'||c=='i'||c=='o'||c=='u') ||(c=='A'||c=='E'||c=='I'||c=='O'||c=='U'))
    {
        cout<<c<<"  is Vowel";
    }else{
        cout<<c<<"  is Consonent";
    }
    return 0;
}