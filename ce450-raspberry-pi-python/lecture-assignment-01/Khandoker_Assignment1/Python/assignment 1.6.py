def pfct_num(n):
    factors_sum = 0
    for i in range(1, n):
        if n % i == 0:
            factors_sum += i

    if factors_sum == n:
        print(True)
    else:
        print(False)

n = int(input("Enter the number: "))
pfct_num(n)
