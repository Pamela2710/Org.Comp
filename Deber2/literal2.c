#include <stdio.h>
#include <stdbool.h>
 
bool CalculoA(int anio){
    if (anio % 400 == 0)
        return true;
    else if (anio % 100 == 0)
        return false;
    else if (anio % 4 == 0)
        return true;
    return false;
}
 
int main(){
    int anio1 = 1996;
    int anio2 = 2001;
    CalculoA(anio1)? 
    printf(" Es Bisiesto"):
    printf(" No es bisiesto");
    printf("\n");
    CalculoA(anio2)?
    printf(" Es Bisiesto"):
    printf(" No es bisiesto");
}