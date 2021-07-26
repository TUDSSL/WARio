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

  quicksort(numbers, 0, sizeof(numbers)/sizeof(numbers[0])-1);

  return numbers[1];
}

#if 0
int main() {
  int i, count, number[25];

  printf("How many elements are u going to enter?: ");
  scanf("%d", &count);

  printf("Enter %d elements: ", count);
  for (i = 0; i < count; i++) scanf("%d", &number[i]);

  quicksort(number, 0, count - 1);

  printf("Order of Sorted elements: ");
  for (i = 0; i < count; i++) printf(" %d", number[i]);

  return 0;
}
#endif
