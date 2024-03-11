#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

int pedirEntero (int x)
{   
    printf ("introducir un entero\n");
    scanf ("%d",&x);
    return x;
}


int main (void)
{int x = 0 ,y = 0; 
 x = pedirEntero (x);
 y = pedirEntero (y);
 (y = x + y);
 (x = x + 1);
 printf ("x=%d, y=%d\n",x,y);
 
 return 0;
}