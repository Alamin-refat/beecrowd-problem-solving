# 1046-Game Time

'''Read the start time and end time of a game, in hours. Then calculate the duration of the game, knowing that the game can begin in a day and finish in another day, with a maximum duration of 24 hours. The message must be printed in portuguese “O JOGO DUROU X HORA(S)” that means “THE GAME LASTED X HOUR(S)”

Input
Two integer numbers representing the start and end time of a game.

Output
Print the duration of the game as in the sample output.'''

# Read input
start, end = map(int, input().split())

# Calculate duration
if start < end:
    duration = end - start
else:
    duration = 24 - start + end

# Special case: if start and end are both 0, duration is 24 hours
if start == end:
    duration = 24

# Print result
print(f"O JOGO DUROU {duration} HORA(S)")