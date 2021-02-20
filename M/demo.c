#include <stdio.h> 
 
int main() 
{ 
    char string[20]; 
 
    fgets(string, 19, stdin); 
    printf("%s\n", string); 
     
    return 0; 
} 