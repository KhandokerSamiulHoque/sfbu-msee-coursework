#include <stdio.h>

int main() {
    int decimal_no, count_one = 0;

    printf("Enter decimal number: ");
    scanf("%d", &decimal_no);

    while(decimal_no) {
        if(decimal_no & 1) {
            count_one++;
        }
        decimal_no >>= 1;
    }
    printf("There are %d ones in given decimal number\n", count_one);
    return 0;
}
