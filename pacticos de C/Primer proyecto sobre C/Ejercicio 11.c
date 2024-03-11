#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

struct datos_t {
float maximo;
float minimo;
float promedio;
};

int pedirEntero (void)
{   float x;
    scanf ("%f",&x);
    return x;
}


void pedirArreglo(float a[], int n_max)
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

struct datos_t stats(float a[], int tam)
{   assert (tam != 0);
    struct datos_t sd;
    int i =0 ;
    sd.maximo=a[i];
    sd.minimo=a[i];
    sd.promedio=0;
    int sum=0;
    while (i<tam){
        if (sd.maximo<a[i]){
            (sd.maximo=a[i]);
        }
        if (sd.minimo>a[i]){
            (sd.minimo=a[i]);
        }
        sum=sum + a[i];
        i=i+1;
    }
    sd.promedio=(float)sum/tam;
    printf ("%f,%f,%f",sd.maximo,sd.minimo,sd.promedio);
    return sd;
}


int main (void)
{   int N;
    printf("elegir el tamaño del arreglo\n");
    scanf("%d",&N);
    float a[N];
    pedirArreglo (a,N);
    stats (a,N);
    return 0.0;
}
