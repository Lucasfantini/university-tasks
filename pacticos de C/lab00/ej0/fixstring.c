#include <stdbool.h>
#include <assert.h>

#include "fixstring.h"

unsigned int fstring_length(fixstring s) {
char aux =1;
int i = 0 ;
while (aux !='\0') 
{ 
  aux =  s[i];
 if(aux !='\0'){
     i=i+1;}
}
return i;
}

bool fstring_eq(fixstring s1, fixstring s2) {

bool b=true;
unsigned int i = 0;
if (fstring_length (s1) == fstring_length (s2)){
 while (i <= fstring_length (s1) && b ){
    b=b && (s1[i]==s2[i]);
    i=i+1;
 }

}
else{
b = false;
}
return b;

}

bool fstring_less_eq(fixstring s1, fixstring s2) {
bool b= true;


if (s1[0]>s2[0]){
    b= false;
}
return b;
}

