#include <stdio.h>
 #include <assert.h>
 int pedirEntero (int x) {
  
  printf("ingrese un valor entero \n");
  scanf("%d", &x);
  
  return x;
 }
 void imprimeEntero(int x) {
  printf("%d\n", x);
 } 
 
 int main (void){
  int x=0, y=0, z=0,X,Y,Z;
  int aux;
  int auxy;
  X=pedirEntero(x);
  Y=pedirEntero(y);
  Z=pedirEntero(z);
  x=X;
  y=Y;
  z=Z;
  assert (x==X&&y==Y&&z==Z&&z>0&&y!=0);
  aux=x;
  auxy=y;
  x=y*z;
  y=aux%z;
  z=aux/auxy;
  imprimeEntero(x);
  imprimeEntero(y);
  imprimeEntero(z);
  assert (x==Y*Z&&y==X%Z&&z==X/Y);
  return 0;
 
 }