def lrgst_factor(m):
    largest = 0
    for i in range(1, m):
        if m % i == 0:
            largest = i

    return largest

# Prompt the user for input
m = int(input("Enter an integer greater than 1: "))

# Call the function and print the result
result = lrgst_factor(m)
print(result)
