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


struct comp_t {
int menores;
int iguales;
int mayores;
};

struct comp_t cuantos(int a[], int tam, int elem)
{  
      struct comp_t c;
      int n = 0;
      c.mayores = 0;  
      c.menores = 0;
      c.iguales = 0;
    while(tam>n){
     if(elem == a[n]){
        (c.iguales= c.iguales + 1); 
    }
     if(elem > a[n]){
        (c.menores= c.menores + 1); 
    }
     if(elem < a[n]){
        (c.mayores= c.mayores + 1); 
    }
    (n=n+1);
   }
   printf ("los elementos mayores son %d,los elementos menoores son %d,los elementos iguales son %d\n",c.mayores,c.menores,c.iguales);
   return c;
}


int main (void)
{   int N;
    int elem;
    printf("elegir el tamaño del arreglo\n");
    scanf("%d",&N);
    int a[N];
    pedirArreglo (a,N);
    printf ("que elemento desea ver\n");
    scanf("%d",&elem);
    cuantos (a,N,elem);
    return 0;
}
