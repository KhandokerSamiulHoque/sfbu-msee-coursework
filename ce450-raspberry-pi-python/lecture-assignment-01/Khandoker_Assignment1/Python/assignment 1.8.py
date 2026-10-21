def double_5(n):
    digits = str(n)

    for m in range(len(digits) - 1):
        if digits[m] == '5' and digits[m+1] == '5':
            return True
    return False

n = int(input("Enter number: "))
output = double_5(n)
print(output)

