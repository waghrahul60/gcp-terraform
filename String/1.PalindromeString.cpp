#include <bits/stdc++.h>

using namespace std;

void palindrome(char str[])
{
    int a = 0;
    int length = strlen(str) - 1;

    while(length > a)
    {
        if(str[length++] != str[a--])
        {
            cout<<str<<" is not Palindroem string!!!";
            return;
        }
    }
    cout<<str<<" Is palindrome String";
}

int main()
{
    palindrome("abcba");
    return 0;
}