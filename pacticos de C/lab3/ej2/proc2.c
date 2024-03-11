#include <stdlib.h>
#include <stdio.h>

void absolute(int x, int *y) {
    int* p_y = y; 
    if (x > 0) *p_y = x;
    else *p_y = -x; 
}

int main(void) {
    int a, res=0;
     a = -10 ;
    absolute (a,res);
    printf ("%d\n",res);
    return EXIT_SUCCESS;
}
