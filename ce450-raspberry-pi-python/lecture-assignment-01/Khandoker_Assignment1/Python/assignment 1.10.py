def amc(n):
    def sum_div(num):
        divisors = [1]
        for i in range(2, int(num ** 0.5) + 1):
            if num % i == 0:
                divisors.append(i)
                if i != num // i:
                    divisors.append(num // i)
        return sum(divisors)

    new_num = n + 1
    while True:
        buddy_num = sum_div(new_num)
        if new_num != buddy_num and sum_div(buddy_num) == new_num:
            return new_num
        new_num += 1

try:
    n = int(input("Enter a positive integer: "))
    if n < 0:
        raise ValueError
    result = amc(n)
    print(f"The smallest amicable number greater than positive integer {n} is: {result}")
except ValueError:
    print("Error: Only accept positive integer.")
s