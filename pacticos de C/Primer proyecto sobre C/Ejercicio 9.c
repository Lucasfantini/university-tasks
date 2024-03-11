#include <limits.h>
#include <stdio.h>
#include <stdbool.h>



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


int minimo_pares(int a[], int n)
{   int d;
    int i;
    i=0;
    d = INT_MAX;
    while (n>i){
        if (a[i]%2==0){
            if (d>a[i]){
                d=a[i];
            }         
        }
        (i=i+1);
    }
    printf ("el minimo par es %d\n",d);
    return d;
}


int minimo_impares(int a[], int n)
{   int d;
    int i;
    i=0;
    d = INT_MAX;
    while (n>i){
        if (a[i]%2!=0){
            if (d>a[i]){
                d=a[i];
            }         
        }
        (i=i+1);
    }
    printf ("el minimo impar es %d\n",d);
    return d;
}


int main (void)
{   int N;
    printf ("elegir el tamaño del arreglo\n");
    scanf ("%d",&N);
    int a[N];
    pedirArreglo(a,N);
    minimo_pares(a,N);
    minimo_impares(a,N);
    return 0;
}
