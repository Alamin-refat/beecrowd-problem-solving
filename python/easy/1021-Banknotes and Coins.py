# 1021-Banknotes and Coins

'''Read a value of floating point with two decimal places. This represents a monetary value. After this, calculate the smallest possible number of notes and coins on which the value can be decomposed. The considered notes are of 100, 50, 20, 10, 5, 2. The possible coins are of 1, 0.50, 0.25, 0.10, 0.05 and 0.01. Print the message “NOTAS:” followed by the list of notes and the message “MOEDAS:” followed by the list of coins.
Input
The input file contains a value of floating point N (0 ≤ N ≤ 1000000.00).

Output
Print the minimum quantity of banknotes and coins necessary to change the initial value, as the given example.'''

value = float(input())


cents = int(round(value * 100))

notes = [10000, 5000, 2000, 1000, 500, 200]
coins = [100, 50, 25, 10, 5, 1]

print("NOTAS:")
for note in notes:
    count = cents // note
    print(f"{count} nota(s) de R$ {note/100:.2f}")
    cents %= note

print("MOEDAS:")
for coin in coins:
    count = cents // coin
    print(f"{count} moeda(s) de R$ {coin/100:.2f}")
    cents %= coin  