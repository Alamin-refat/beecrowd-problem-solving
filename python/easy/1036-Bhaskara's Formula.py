# 1036-Bhaskara's Formula

'''Read 3 floating-point numbers. After, print the roots of bhaskara’s formula. If it's impossible to calculate the roots because a division by zero or a square root of a negative number, presents the message “Impossivel calcular”.

Input
Read 3 floating-point numbers (double) A, B and C.

Output
Print the result with 5 digits after the decimal point or the message if it is impossible to calculate.'''

import math

A, B, C = map(float, input().split())

if A == 0:
    print("Impossivel calcular")
else:
    discriminant = B * B - 4 * A * C
    if discriminant < 0:
        print("Impossivel calcular")
    else:
        sqrt_disc = math.sqrt(discriminant)
        R1 = (-B + sqrt_disc) / (2 * A)
        R2 = (-B - sqrt_disc) / (2 * A)
        print(f"R1 = {R1:.5f}")
        print(f"R2 = {R2:.5f}")