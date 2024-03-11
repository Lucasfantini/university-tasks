#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
int pedirEntero (void)
{   assert (true);
    int x;
    printf("introduzca un entero\n");
    scanf ("%d",&x);
    
    return x;
}



int main (void)
{
    int x = pedirEntero();
    int y = pedirEntero();
    if (x>=y)
{
    printf ("el minimo es %d\n",y);
 }
    if (y>x)
    {
       printf ("el minimo es %d\n",x);
    }
    assert (x>=y || x < y);
    return 0;
}