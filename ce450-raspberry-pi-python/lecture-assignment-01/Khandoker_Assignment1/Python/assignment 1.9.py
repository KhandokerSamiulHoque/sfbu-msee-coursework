def uniq_digits(x):
    digits = set(str(x))
    return len(digits)

x = int(input("Write a positive integer: "))

Output = uniq_digits(x)
print(Output)

