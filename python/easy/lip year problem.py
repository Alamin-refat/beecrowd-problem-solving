#lip year problem solve.......
year=int(input("Enter valid year: "))

if year % 4 == 0 and year % 100 != 0:
    print(year,"year is lip year")
elif year % 100 ==0 and year % 400 == 0:
    print(year,"year is lip year")
else:
    print(year,"year is not lip year")