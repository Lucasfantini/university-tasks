#include <stdio.h>
#include <stdbool.h>
#include <assert.h>


int pedirEntero (void)
{   int x;
    scanf ("%d",&x);
    return x;
}
void pedirArreglo(int a[], int n_max)
{
    int i;
    i= 0;
    
    while(i < n_max)
    {
    printf("Ingrese un Valor para el Elemento %d del Arreglo:\n",i);
    a[i] = pedirEntero();
    i= i+1;
    }
}

int main (void)
{ int N ;
  int i=0;
  int res=0;
    printf("ingrese el tamaño del arreglo \n");
    scanf ("%d", &N);
    int a[N];
    pedirArreglo(a,N);
    while (i<N) {
        res = res + a[i];
        i=i+1;
    }
    printf("la suma de los elementos del arreglo %d\n",res);
    return 0;
}
