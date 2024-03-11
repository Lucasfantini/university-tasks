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
{int x = 0 ,y = 0,z = 0,aux = 0; 
 x = pedirEntero (x);
 y = pedirEntero (y);
 z = pedirEntero (z);
 (aux = x);
 (x=y);
 (y=x+y+z);
 (z=aux + x);
 printf ("x=%d, y=%d,z=%d\n",x,y,z);
 
 return 0;
}