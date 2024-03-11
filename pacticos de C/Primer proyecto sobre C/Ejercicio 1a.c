#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
int pedirEntero (int x)
{   assert (x >= 0);
    printf (" introducir un entero positivo\n");
    scanf ("%d",&x);
    return x;
}

void holaHasta (int x)
{
    while (x != 0) {
        printf("Hola!\n");
        (x = x-1);
    }
}
int main (void)
{   int x = 0;
    holaHasta(pedirEntero(x));
    return 0;
} 