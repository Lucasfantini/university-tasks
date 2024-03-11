#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
int pedirEntero (int x)
{   assert (true);
    printf ("introducir un entero\n");
    scanf ("%d",&x);
    return x;
}
int main (void)
{int x = 0 ,y = 0 ,z; 
 x = pedirEntero (x);
 y = pedirEntero (y);
 (z=x);
 (x=y);
 (y=z);
 printf ("x=%d, y=%d\n",x,y);
 assert ((pedirEntero(x)== y) && (pedirEntero (y)==x) );
 return 0;
}