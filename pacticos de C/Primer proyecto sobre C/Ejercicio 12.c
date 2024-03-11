#include <stdio.h>
#include <stdbool.h>
#include <assert.h>
typedef char clave_t;
typedef int valor_t;
struct asoc {
clave_t clave;
valor_t valor;
};
valor_t pedirEntero (void)
{   valor_t x;
    printf("escribir un entero\n");
    scanf ("%d",&x);
    return x;

}
void pedirArreglo(struct asoc a[], int n_max)
{
    int i;
    struct asoc c;
    i= 0;
    
    while(i < n_max)
    {
    printf("Ingrese un Valor para el Elemento %d del Arreglo:\n",i);
    c.valor = pedirEntero();
    printf ("pedir char\n");
    scanf (" %c",&c.clave);
    a[i]=c;
    i=i+1;
    }
}
bool asoc_existe(struct asoc a[], int tam, clave_t c){
    int i=0;
    bool b=false;
    while (i<tam){
          b= b||(c==(a[i].clave));
          i=i+1;
    }
return b;