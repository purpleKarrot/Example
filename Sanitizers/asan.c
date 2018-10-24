#include <stdlib.h>

int asan(int argc, char* argv[])
{
  char* x = calloc(10, sizeof(char*));
  free(x);
  return x[5];
}
