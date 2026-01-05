# 1045-Triangle Types

'''Read 3 double numbers (A, B and C) representing the sides of a triangle and arrange them in decreasing order, so that the side A is the biggest of the three sides. Next, determine the type of triangle that they can make, based on the following cases always writing an appropriate message:

if A ≥ B + C, write the message: NAO FORMA TRIANGULO
if A2 = B2 + C2, write the message: TRIANGULO RETANGULO
if A2 > B2 + C2, write the message: TRIANGULO OBTUSANGULO
if A2 < B2 + C2, write the message: TRIANGULO ACUTANGULO
if the three sides are the same size, write the message: TRIANGULO EQUILATERO
if only two sides are the same and the third one is different, write the message: TRIANGULO ISOSCELES
Input
The input contains three double numbers, A (0 < A) , B (0 < B) and C (0 < C).

Output
Print all the classifications of the triangle presented in the input.'''

# Read input
sides = list(map(float, input().split()))

# Sort in decreasing order
sides.sort(reverse=True)
A, B, C = sides[0], sides[1], sides[2]

# Check if triangle exists
if A >= B + C:
    print("NAO FORMA TRIANGULO")
else:
    # Check for right, obtuse, or acute triangle
    A2 = A * A
    BC2 = B * B + C * C
    
    if A2 == BC2:
        print("TRIANGULO RETANGULO")
    elif A2 > BC2:
        print("TRIANGULO OBTUSANGULO")
    else:
        print("TRIANGULO ACUTANGULO")
    
    # Check for equilateral or isosceles
    if A == B == C:
        print("TRIANGULO EQUILATERO")
    elif A == B or B == C or A == C:
        print("TRIANGULO ISOSCELES")