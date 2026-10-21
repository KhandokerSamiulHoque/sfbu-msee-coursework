def has_seven(k):
    if k <= 0:
        raise ValueError("Number needs to be positive.")
    if k % 10 == 7:
        return True
    elif k < 10:
        return False
    else:
        return has_seven(k // 10)

num = int(input("Enter a positive number: "))

try:
    if has_seven(num):
        print("True")
    else:
        print("False")
except ValueError as ERROR:
    print("Error:", str(ERROR))