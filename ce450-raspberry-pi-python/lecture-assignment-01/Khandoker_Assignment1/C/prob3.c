#include <stdio.h>

int main() {
    int cut_no;
    printf("Enter how many cuts you want: ");
    scanf("%d", &cut_no);


    int piece_no = (cut_no * cut_no + cut_no + 2) / 2;

    printf("Pieces will be: %d\n", piece_no);
    
    return 0;
}
