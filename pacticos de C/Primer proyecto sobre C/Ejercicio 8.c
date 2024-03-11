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
void intercambiar (int a [], int n , int j , int i)
{ int aux;
  aux = a[i];
  a[i]= a[j];
  a[j]= aux;

}

void imprimeArreglo(int a[], int n_max) {

    int i;
    i=0;
    printf("[");
    while (i < (n_max-1)) {
        printf("%d,", a[i]);
        i=i+1;
    }
    
    printf("%d] \n",a[n_max-1]);
}
int main (void)
{   
    int N;
    printf("elegi el tamaño del arreglo\n");
    scanf("%d",&N);
    int a[N];
    pedirArreglo (a,N);
    int i,j;
    printf ("elegir posiciones que intercambiar\n");
    scanf("%d",&i);
    scanf("%d",&j);
    intercambiar (a,N,i,j);
    imprimeArreglo (a,N);

    return 0;
}
