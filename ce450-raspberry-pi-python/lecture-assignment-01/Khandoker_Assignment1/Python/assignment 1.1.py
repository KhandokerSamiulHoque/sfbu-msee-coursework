def if_function(condition, true_result, false_result):
    """Return true_result if condition is a true value, and
    false_result otherwise.
    """
    return true_result if condition else false_result

# Test cases:
print(if_function(True, 2, 3)) # Output: 2
print(if_function(False, 2, 3)) # Output: 3
print(if_function(3==2, 3+2, 3-2)) # Output: -1
print(if_function(3>2, 3+2, 3-2)) # Output: 5
