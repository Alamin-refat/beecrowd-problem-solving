# 1038-Snack

'''Using the following table, write a program that reads a code and the amount of an item. After, print the value to pay. This is a very simple program with the only intention of practice of selection commands.

Input
The input file contains two integer numbers X and Y. X is the product code and Y is the quantity of this item according to the above table.

Output
The output must be a message "Total: R$ " followed by the total value to be paid, with 2 digits after the decimal point.'''

X, Y = map(int, input().split())

if X == 1:
    price = 4.00
elif X == 2:
    price = 4.50
elif X == 3:
    price = 5.00
elif X == 4:
    price = 2.00
elif X == 5:
    price = 1.50

total = price * Y
print(f"Total: R$ {total:.2f}")