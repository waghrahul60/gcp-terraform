#include <iostream>
#include <cstring>
using namespace std;

int main()
{
    string s = "011011101111101111";
    
    int n = s.length();

   
    char char_array[n + 1];
 
    
    strcpy(char_array, s.c_str());
    
     int count = 0;
     int max=-1;
     int min=-1;
      for (int i = 0; i < n; i++)
      {
           cout << char_array[i];
           if(char_array[i] == '1'){
               count++;
                 if(max < count )
                 {  
                     max = count;
                 }
              
           }else{
               count = 0;
           }
      }
      
      cout<<"min : "<<max;
      cout<<"count : "<<min;
    
    return 0;
}