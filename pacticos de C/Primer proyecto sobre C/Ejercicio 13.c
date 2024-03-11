#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

int pedirEntero (void) {
    int x;
    printf ("ingrese un entero positivo\n");
    scanf ("%d",&x);
    return x;
}
bool esPrimo (int x)
{   bool b=false;
    int i=x;
    int aux=0;
    while (i>0){
        if (x%i==0){
            aux=aux + 1;
        }
        i=i-1;
    }
    if (aux == 2) {b=true;}
    return b;
}

int primoN (int x)
{

    int i=0;
    while (x>0){
        if (esPrimo(i)){
            (x=x-1);
        }
        (i=i+1);
    }
return i-1;

}




int main (void)
{
   int x; 
   x = pedirEntero();
   while (x<=0) {
    printf("no se admiten negativos ni nulos, ingersa un nuevo entero\n");
    x = pedirEntero ();
   }
 printf ("%d",primoN (x));
 return 0;
}
