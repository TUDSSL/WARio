#include "printf.h"

void quicksort(int *numbers, int first, int last) {
  int i, j, pivot, temp;

  if (first < last) {
    pivot = first;
    i = first;
    j = last;

    while (i < j) {
      while (numbers[i] <= numbers[pivot] && i < last) i++;
      while (numbers[j] > numbers[pivot]) j--;
      if (i < j) {
        temp = numbers[i];
        numbers[i] = numbers[j];
        numbers[j] = temp;
      }
    }

    temp = numbers[pivot];
    numbers[pivot] = numbers[j];
    numbers[j] = temp;
    quicksort(numbers, first, j - 1);
    quicksort(numbers, j + 1, last);
  }
}

int main() {
  static int numbers[] = {9,2,3,5,6,8,10,1,4,7};
  int numbers_len = sizeof(numbers)/sizeof(numbers[0]);

  printf("Quicksort demo!\n");

  printf("Unordered numbers: ");
  for (int i=0; i<numbers_len; i++) {
    printf("%d, ", numbers[i]);
  }
  printf("\n");

  quicksort(numbers, 0, numbers_len-1);

  printf("Ordered numbers: ");
  for (int i=0; i<numbers_len; i++) {
    printf("%d, ", numbers[i]);
  }
  printf("\n");

  return numbers[1];
}
