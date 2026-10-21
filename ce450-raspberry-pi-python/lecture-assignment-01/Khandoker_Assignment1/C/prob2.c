#include <stdio.h>
#include <stdlib.h>

int int_dif(const void *p, const void *q);

int main() {
  int size, i;
  printf("Enter a number of array’s size for a series of numbers saving: ");
  scanf("%d", &size);

  int array[size];
  printf("Enter a series of numbers: ");
  for (i = 0; i < size; i++) {
    scanf("%d", &array[i]);
  }

  int odd[size], even[size];
  int odd_no = 0, even_no = 0;
  for (i = 0; i < size; i++) {
    if (array[i] % 2 == 1) {
      odd[odd_no++] = array[i];
    } else {
      even[even_no++] = array[i];
    }
  }
  qsort(odd, odd_no, sizeof(int), int_dif);
  qsort(even, even_no, sizeof(int), int_dif);

  for (i = 0; i < odd_no; i++) {
    printf("%d ", odd[i]);
  }
  for (i = 0; i < even_no; i++) {
    printf("%d ", even[i]);
  }

  printf("\n");

  return 0;
}

int int_dif(const void *p, const void *q) {
  int int1 = *(int *)p;
  int int2 = *(int *)q;

  if (int1 % 2 == 1 && int2 % 2 == 0) {
    return -1;
  } else if (int1 % 2 == 0 && int2 % 2 == 1) {
    return 1;
  } else {
    return int1 - int2;
  }
}
