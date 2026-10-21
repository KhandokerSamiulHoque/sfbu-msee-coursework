def same_ord(a, b):
    bits_a = len(str(a))
    bits_b = len(str(b))
    if bits_a == bits_b:
        return True
    else:
        return False

a = int(input(" 1st number: "))
b = int(input(" 2nd number: "))

result = same_ord(a, b)
print(result)
