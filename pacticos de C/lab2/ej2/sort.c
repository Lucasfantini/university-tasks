#include <assert.h>
#include <stdbool.h>
#include <stdio.h>

#include "array_helpers.h"
#include "sort_helpers.h"
#include "sort.h"


static void quick_sort_rec(int a[], unsigned int izq, unsigned int der) {
unsigned int piv;
if (izq<der){
    piv = partition (a,izq,der);
    quick_sort_rec(a, piv+1, der);
    quick_sort_rec(a, izq, (piv == 0) ? izq : piv-1);

}
}

void quick_sort(int a[], unsigned int length) {
    quick_sort_rec(a, 0u, (length == 0u) ? 0u : length - 1u);
}

