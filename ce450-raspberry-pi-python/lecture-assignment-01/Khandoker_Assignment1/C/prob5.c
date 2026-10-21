#include <stdio.h>

int main() {
  int total_number_of_petri_dishes, i, j, label, original_bacterial_number, updated_bacterial_number[100], PR;
  int A_species = 0, B_species = 0;
  int A_lebels[100], B_labels[100];

  printf("Enter total number of Petri dishes: ");
  scanf("%d", &total_number_of_petri_dishes);

  for (i = 0; i < total_number_of_petri_dishes; i++) {
    printf("Enter Petri dish label, original bacterial number, new bacterial number after one hour reproduction: ");
    scanf("%d %d %d", &label, &original_bacterial_number, &updated_bacterial_number[i]);

    PR = updated_bacterial_number[i] / original_bacterial_number;

    if (PR > 100) {
      A_lebels[A_species++] = label;
    } else {
      B_labels[B_species++] = label;
    }
  }

  printf("Running results:\n");

  for (i = 0; i < A_species - 1; i++) {
    for (j = i + 1; j < A_species; j++) {
      if (updated_bacterial_number[i] > updated_bacterial_number[j]) {
        int temp = A_lebels[i];
        A_lebels[i] = A_lebels[j];
        A_lebels[j] = temp;
      }
    }
  }

  for (i = 0; i < B_species - 1; i++) {
    for (j = i + 1; j < B_species; j++) {
      if (updated_bacterial_number[i] > updated_bacterial_number[j]) {
        int temp = B_labels[i];
        B_labels[i] = B_labels[j];
        B_labels[j] = temp;
      }
    }
  }

  printf("%d in A sub-species and Petri dish labels from smaller PR to bigger PR are ", A_species);
  for (i = 0; i < A_species; i++) {
    if (i > 0) {
      printf(" ");
    }
    printf("%d", A_lebels[i]);
  }
  printf("\n");

  printf("%d in B sub-species and Petri dish labels from smaller PR to bigger PR are ", B_species);
  for (i = 0; i < B_species; i++) {
    if (i > 0) {
      printf(" ");
    }
    printf("%d", B_labels[i]);
  }
  printf("\n");

  return 0;
}