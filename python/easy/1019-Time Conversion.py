# 1019-Time Conversion

'''Read an integer value, which is the duration in seconds of a certain event in a factory, and inform it expressed in hours:minutes:seconds.
Input
The input file contains an integer N.
Output
Print the read time in the input file (seconds) converted in hours:minutes:seconds like the following example.'''

N = int(input())

hours = N // 3600
remaining = N % 3600
minutes = remaining // 60
seconds = remaining % 60

print(f"{hours}:{minutes}:{seconds}")
