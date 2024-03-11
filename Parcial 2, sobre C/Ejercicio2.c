#include <stdio.h>
 #include <stdbool.h>
 #include <assert.h>
 #define n 5
 int pedirEntero (int x) {
  
  printf("ingrese un valor entero \n");
  scanf("%d", &x);
  
  return x;
 }
 void pedirArreglo(int a[], int n_max) {
 
  int i;
  int b;
  i=0;
  while (i<n_max) {
  printf("ingrese el elemento %d del arreglo \n",i);
  scanf("%d", &b);
  a[i] = b;
  i=i+1; 
  }
 
 }
 
 int multiplicaMultiplos (int a[],int N,int k)
 { 
  int b=1;
  int i = 0;
  while(N>i){
  if(a[i]%k==0){
  b=b*a[i];
  }
  i=i+1;
  }
  return b;
 } 
 
 
 
 int main (void)
 { int k=0;
  k=pedirEntero(k);
  assert (k=!0);
  int a[n];
  pedirArreglo (a,n);
  int d;
  d = multiplicaMultiplos (a,n,k) ;
  printf("el resultado es %d\n",d);
  return 0;
 }