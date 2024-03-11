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
{int x=0,i=0;
x = pedirEntero(x);
while (x != 0){
    (i=i + x);
    (x=x-1);
}
printf ("%d",i);
return 0;
}
