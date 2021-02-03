//WAP to Check Armstrong Number for 3 digit number

#include <iostream>

using namespace std;

int main()
{
    int remainder, sum=0, cube;
    int input, num;

    cout << "Enter a Number : ";
    cin >> num;
    input = num;

    while(num > 0)
    {
        remainder = num % 10;
        cube = (remainder * remainder * remainder);
        sum = sum + cube;
        num = num / 10;
    }
   
    if (input == sum)
    {
        cout << input << "  is Armstrong Number";
    }
    else
    {
        cout << input << "  is Not Armstrong Number";
    }
    return 0;
}