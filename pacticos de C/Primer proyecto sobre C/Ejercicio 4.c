#include <stdio.h>
#include <stdbool.h>
#include <assert.h>

int pedirDivisor (int x)
{   assert (x >= 0);
    printf (" introducir un Divisor positivo\n");
    scanf ("%d",&x);
    return x;
}
int pedirDividendo (int x)
{   assert (x >= 0);
    printf (" introducir un Dividendo positivo\n");
    scanf ("%d",&x);
    return x;
}

struct div_t
{
    int coci;
    int rest;
};

int division_entera (int x, int y)
{int i=0;
while (x>=y) {
    (x=x-y);
    (i=i+1);
}
return i ;
}

struct div_t division(int x, int y)

{struct div_t div;
div.rest = x%y;
div.coci =division_entera (x,y);
return div;
}
 
int main (void)
{int x=0 ,y=0;
x=pedirDividendo(x);
y=pedirDivisor(y);
struct div_t d;
(d = division (x,y));
printf("el resto es = %d y el cociente es = %d",d.rest,d.coci);
}