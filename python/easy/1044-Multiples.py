# 1044-Multiples

'''Read two integer values (A and B). After, the program should print the message "Sao Multiplos" (are multiples) or "Nao sao Multiplos" (aren’t multiples), corresponding to the read values.
Input
The input has two integer numbers.
Output
Print the relative message to the input as stated above.'''

# Read two integers
a, b = map(int, input().split())

# Check if one is a multiple of the other
if a % b == 0 or b % a == 0:
    print("Sao Multiplos")
else:
    print("Nao sao Multiplos")