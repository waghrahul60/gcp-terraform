//WAP to Program to Check Prime Number

#include <iostream>

using namespace std;

int main()
{
    int  low, high;
    bool flag = true;
    cout << "Enter a Lower and upper Range : ";
    cin >> low;
    cin >> high;
    while (low < high)
    {
        flag = true;

        if (low == 0 || low == 1)
        {
            low++;
            continue;
        }

        for (int i = 2; i <= low / 2; i++)
        {
            if (low % i == 0)
            {
                flag = false;
                break;
            }
        }
        if (flag)
        {
            cout << low << " ";
        }
        low++;
    }
    return 0;
}