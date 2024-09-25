#include <stdio.h>

int main() {
  int a = 5;
  int b = 0;

  int unusedVar = 10;

  double result = a / b;
  printf("Result: %d\n", result);

  if (b != 0) {
    double result = (double)a / b;
    printf("Safe division: %d\n", result);
  } else {
    printf("Warning: Division by zero!");
  }

  return 0;
}
