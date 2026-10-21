def foo():
    a = int(input("Enter  a: "))
    b = int(input("Enter  b: "))
    c = int(input("Enter  c: "))
    d = int(input("Enter  d: "))

    inputs = [a, b, c, d]
    inputs.sort()
    sum_of_square_of_two_smallest_number = inputs[0]**2 + inputs[1]**2
    return sum_of_square_of_two_smallest_number

print(foo())
