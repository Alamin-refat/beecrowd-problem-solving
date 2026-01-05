# 1047-Game Time with Minutes

'''Read the start time and end time of a game, in hours and minutes (initial hour, initial minute, final hour, final minute). Then print the duration of the game, knowing that the game can begin in a day and finish in another day,

Obs.: With a maximum game time of 24 hours and the minimum game time of 1 minute.

Input
Four integer numbers representing the start and end time of the game.

Output
Print the duration of the game in hours and minutes, in this format: “O JOGO DUROU XXX HORA(S) E YYY MINUTO(S)” . Which means: the game lasted XXX hour(s) and YYY minutes.'''

# Read input
start_hour, start_min, end_hour, end_min = map(int, input().split())

# Convert everything to minutes
start_total_minutes = start_hour * 60 + start_min
end_total_minutes = end_hour * 60 + end_min

# Calculate duration in minutes
if end_total_minutes > start_total_minutes:
    duration_minutes = end_total_minutes - start_total_minutes
else:
    duration_minutes = (24 * 60 - start_total_minutes) + end_total_minutes

# Special case: if start and end are exactly the same, duration is 24 hours
if duration_minutes == 0:
    duration_minutes = 24 * 60

# Convert back to hours and minutes
hours = duration_minutes // 60
minutes = duration_minutes % 60

# Print result
print(f"O JOGO DUROU {hours} HORA(S) E {minutes} MINUTO(S)")

