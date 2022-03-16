#include <stdio.h>
void abs_diff(int a, int b) {
  int c = a-b;
  int d = abs(c);
 printf("Resultado: %i\n",d);
}

int main(){
abs_diff(-2,3);
}