/*
se muestra como comentario el ejercicio como lo hice en el parcial y luego corregido 
{#include <stdio.h> 
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
 
 struct alturas_t {
 int n_altos;
 int n_bajos;
 };
 
 
 struct persona {
 int dni;
 float altura;
 };
 
 
 struct alturas_t contar_altos_y_bajos(struct persona a[], int tam, float alt)
 { int i =0 ;
  struct alturas_t c;
  while (tam>i){
  if (a[i].altura>alt){
  c.n_altos=c.n_altos+1;
  }
  if (a[i].altura<alt){
  c.n_altos=c.n_bajos+1;
  i=i+1;
  }
  return c;
 }
 }
 
 
 int main (void)
 { 
  int k=0;
  k=pedirEntero(k);
  int a[n];
  pedirArreglo (a,n);
  struct alturas_t d;
  d = contar_altos_y_bajos(a,n,k) ;
  printf("el maximo par es %d y el minimo impar es %d\n",d.parmax,d.impmin);
  return 0;
 } 
 */
#include <stdio.h>
 #define N 5
 
 typedef struct persona {
  int dni;
  float altura;
 }; 
 
 struct alturas_t {
  int n_altos;
  int n_bajos;
 };
 
 struct alturas_t contar_altos_y_bajos(struct persona a[], int tam, float alt){
  int i; i=0;
  struct alturas_t res;
  res.n_altos=0;
  res.n_bajos=0;
  while (i<tam){
  if (a[i].altura > alt){
  res.n_altos++;
  }
  else if (a[i].altura<alt){ 
  res.n_bajos++;
  }
  i++;
  }
  return res;
 }
 
 int main(void){
  struct persona a[N];
  int i; i=0;
  float c 
  while (i<N){
  printf("Inserte el dni de la persona %d:",i);
  scanf("%d",&a[i].dni);
  printf("Inserte la altura de la persona %d:",i);
  scanf("%f",&a[i].altura);
  i++;
  }
  printf("Ingrese la altura limite alt:");
  scanf("%f",&c);
  struct alturas_t res;
  res=contar_altos_y_bajos(a,N,c);
  printf("Hay %d personas mas altas y %d mas bajas\n",res.n_altos,res.n_bajos);
 }