#include <pthread.h>
#include <stdio.h>

static int Global;

static void* Thread1(void* x)
{
  Global++;
  return NULL;
}

static void* Thread2(void* x)
{
  Global--;
  return NULL;
}

int tsan(int argc, char* argv[])
{
  pthread_t t[2];
  pthread_create(&t[0], NULL, Thread1, NULL);
  pthread_create(&t[1], NULL, Thread2, NULL);
  pthread_join(t[0], NULL);
  pthread_join(t[1], NULL);
  return Global;
}
