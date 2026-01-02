# 1043-Triangle

'''Read three point floating values (A, B and C) and verify if is possible to make a triangle with them. If it is possible, calculate the perimeter of the triangle and print the message:
Perimetro = XX.X
If it is not possible, calculate the area of the trapezium which basis A and B and C as height, and print the message:
Area = XX.X
Input
The input file has tree floating point numbers.
Output
Print the result with one digit after the decimal point.'''

# Read three floating point numbers
a, b, c = map(float, input().split())

# Check triangle inequality (strict)
if a < b + c and b < a + c and c < a + b:
    perimeter = a + b + c
    print(f"Perimetro = {perimeter:.1f}")
else:
    area = (a + b) * c / 2
    print(f"Area = {area:.1f}")