# 1042-Simple Sort

'''Read three integers and sort them in ascending order. After, print these values in ascending order, a blank line and then the values in the sequence as they were readed.
Input
The input contains three integer numbers.
Output
Present the output as requested above.'''

# Read three integers
a, b, c = map(int, input().split())

# Store original order
original = [a, b, c]

# Sort them for ascending order
sorted_nums = sorted(original)

# Print sorted (one per line)
for num in sorted_nums:
    print(num)

# Print blank line
print()

# Print original order (one per line)
for num in original:
    print(num)

