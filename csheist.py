import wikipedia

wikipedia.set_lang("fr")

q = "En quelle annee a ete presente pour la premiere fois le Casse-Noisette de Tchaïkovski"
a1 = "En 1877"
a2 = "En 1903"
a3 = "En 1892"

a1 = a1.split(" ")
del a1[0]

a2 = a2.split(" ")
del a2[0]

a3 = a3.split(" ")
del a3[0]

capital = ""

words = q.split(" ")
del words[0]

for word in words:
    for letter in word:
        if letter.isupper():
            capital += " " + word
            break;

capitals = capital.split(" ")
del capitals[0]

for x in capitals:
    print(x + "\n")
    som = wikipedia.summary(x)
    for a in a1:
        if a in som:
            print(a1)

    for a in a2:
        if a in som:
            print(a2)

    for a in a3:
        if a in som:
            print(a3)
    print("=================")
