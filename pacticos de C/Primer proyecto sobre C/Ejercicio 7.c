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
bool existePositivos (int a[],int n)
{   bool b = false;
    int i = 0 ;
    while (i<n){
        ( b = b || (a[i]> 0));
        (i=i+1);
    }

return b;
}

bool todosPositivos (int a[],int n)
{   bool b = true;
    int i = 0 ;
    while (i<n){
        ( b = b && (a[i]> 0));
        (i=i+1);
    }
return b;
}

int main (void)
{
    int N;
    printf("elegir el tamaño del arreglo\n");
    scanf ("%d" , &N);
    int a[N];
    pedirArreglo (a,N);
    existePositivos (a,N);
    todosPositivos (a,N);
    if (todosPositivos (a,N)) {
        printf("son todos positivos\n");
    }
    if (todosPositivos (a,N) == false) {
    printf("no son todos positivos\n");
    }
    if (existePositivos (a,N)){
      
    printf("existen positivos\n");
    }
    if (existePositivos(a,N) == false){
    
    printf("no existen positivos\n");
    }
    return 0;
}
