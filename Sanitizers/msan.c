#include <stdio.h>
#include <stdlib.h>

int msan(int argc, char* argv[])
{
  char* a = malloc(10 * sizeof(char*));
  a[5] = 0;
  if (a[argc])
    printf("xx\n");
  return 0;
}
