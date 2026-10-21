def foo():
    a = int(input("Enter the value for a: "))
    b = int(input("Enter the value for b: "))
    c = int(input("Enter the value for c: "))
    d = int(input("Enter the value for d: "))

    numbers = [a, b, c, d]
    numbers.sort()  # Sort the numbers in ascending order
    smallest_squares_sum = numbers[0]**2 + numbers[1]**2
    return smallest_squares_sum

# Testing the function
print(foo())
