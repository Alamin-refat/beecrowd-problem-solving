# 1010-Simple Calculate

'''In this problem, the task is to read a code of a product 1, the number of units of product 1, the price for one unit of product 1, the code of a product 2, the number of units of product 2 and the price for one unit of product 2. After this, calculate and show the amount to be paid.
Input
The input file contains two lines of data. In each line there will be 3 values: two integers and a floating value with 2 digits after the decimal point.
Output
The output file must be a message like the following example where "Valor a pagar" means Value to Pay. Remember the space after ":" and after "R$" symbol. The value must be presented with 2 digits after the point.'''

# Read first product details
code1, units1, price1 = input().split()
units1 = int(units1)
price1 = float(price1)

# Read second product details
code2, units2, price2 = input().split()
units2 = int(units2)
price2 = float(price2)

# Calculate total amount
total = (units1 * price1) + (units2 * price2)

# Print result in required format
print(f"VALOR A PAGAR: R$ {total:.2f}")