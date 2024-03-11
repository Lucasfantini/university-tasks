#include <stdio.h>
 #include <stdbool.h>
 #include <assert.h>
 #include <limits.h>
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
 
 struct paridad_t {
 int parmax;
 int impmin;
 };
 
 struct paridad_t maxmin_paridad(int a[], int tam){
  int i=0;
  struct paridad_t c;
  c.impmin=INT_MAX,c.parmax=INT_MIN;
  while (tam>i){
  if(a[i]%2==0){
  if (a[i]>c.parmax){
  c.parmax=a[i];}}
  if(a[i]%2!=0){
  if (a[i]<c.impmin){
  c.impmin=a[i];}}
  i=i+1;
  }
  return c;
 }
 
 int main (void)
 { 
  int a[n];
  pedirArreglo (a,n);
  struct paridad_t d;
  d = maxmin_paridad(a,n) ;
  return 0;
 }
