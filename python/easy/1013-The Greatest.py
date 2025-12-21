# 1013-The Greatest

'''Make a program that reads 3 integer values and present the greatest one followed by the message "eh o maior". Use the following formula:
Input
The input file contains 3 integer values.

Output
Print the greatest of these three values followed by a space and the message “eh o maior”.'''

# Read three integers
a, b, c = map(int, input().split())

# Calculate the greatest between a and b using the formula
maior_ab = (a + b + abs(a - b)) // 2

# Calculate the greatest between maior_ab and c
maior = (maior_ab + c + abs(maior_ab - c)) // 2

# Print the result
print(f"{maior} eh o maior")