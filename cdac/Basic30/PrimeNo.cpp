#include <iostream>

using namespace std;

int main()
{
    int num;
    bool prime = true;
    cout << "Enter a number :";
    cin >> num;

    if (num == 0 || num == 1)
    {
        prime = false;
    }
    else
    {
        for (int i = 2; i <= num / 2; i++)
        {
            if (num % i == 0)
            {
                prime = false;
                break;
            }
        }
    }
    if (prime)
    {
        cout << num << " is a prime number";
    }
    else
    {
        cout << num << " is not a prime number";
    }

    return 0;
}