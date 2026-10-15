# 1012-Area

'''Make a program that reads three floating point values: A, B and C. Then, calculate and show:
a) the area of the rectangled triangle that has base A and height C.
b) the area of the radius's circle C. (pi = 3.14159)
c) the area of the trapezium which has A and B by base, and C by height.
d) the area of ​​the square that has side B.
e) the area of the rectangle that has sides A and B.

Input
The input file contains three double values with one digit after the decimal point.

Output
The output file must contain 5 lines of data. Each line corresponds to one of the areas described above, always with a corresponding message (in Portuguese) and one space between the two points and the value. The value calculated must be presented with 3 digits after the decimal point.'''

# Read three floating-point numbers
A, B, C = map(float, input().split())

# Define pi constant
PI = 3.14159

# a) Area of the right triangle (base A, height C)
triangle_area = (A * C) / 2.0

# b) Area of the circle with radius C
circle_area = PI * (C ** 2)

# c) Area of the trapezium with bases A and B, height C
trapezium_area = ((A + B) * C) / 2.0

# d) Area of the square with side B
square_area = B ** 2

# e) Area of the rectangle with sides A and B
rectangle_area = A * B

# Print all results with 3 decimal places
print(f"TRIANGULO: {triangle_area:.3f}")
print(f"CIRCULO: {circle_area:.3f}")
print(f"TRAPEZIO: {trapezium_area:.3f}")
print(f"QUADRADO: {square_area:.3f}")
print(f"RETANGULO: {rectangle_area:.3f}")