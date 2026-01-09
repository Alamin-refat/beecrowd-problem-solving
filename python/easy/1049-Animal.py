# 1049-Animal

'''In this problem, your job is to read three Portuguese words. These words define an animal according to the table below, from left to right. After, print the chosen animal defined by these three words.



Input
The input contains 3 words, one by line, that will be used to identify the animal, according to the above table, with all letters in lowercase.

Output
Print the animal name according to the given input.'''

# Read the three words
palavra1 = input()
palavra2 = input()
palavra3 = input()

# Decision tree based on the table
if palavra1 == "vertebrado":
    if palavra2 == "ave":
        if palavra3 == "carnivoro":
            print("aguia")
        else:  # onivoro
            print("pomba")
    else:  # mamifero
        if palavra3 == "onivoro":
            print("homem")
        else:  # herbivoro
            print("vaca")
else:  # invertebrado
    if palavra2 == "inseto":
        if palavra3 == "hematofago":
            print("pulga")
        else:  # herbivoro
            print("lagarta")
    else:  # anelideo
        if palavra3 == "hematofago":
            print("sanguessuga")
        else:  # onivoro
            print("minhoca")