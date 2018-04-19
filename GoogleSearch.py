# -*- coding: utf-8 -*-
import requests
from bs4 import BeautifulSoup
q = open("/home/david/Documents/gituhb/cashshowHeist/tmp/question.jpg.txt", 'r')
line0 = q.readline()
print(line0)
answers = []
myfile1 = open("/home/david/Documents/gituhb/cashshowHeist/tmp/rep1.jpg.txt", 'r')
line1 = myfile1.readline()


myfile2 = open("/home/david/Documents/gituhb/cashshowHeist/tmp/rep2.jpg.txt", 'r')
line2 = myfile2.readline()

myfile3 = open("/home/david/Documents/gituhb/cashshowHeist/tmp/rep3.jpg.txt", 'r')
line3 = myfile3.readline()

line0 = line0.replace(" ", "+")
answers.append(line1)
answers.append(line2)
answers.append(line3)

nbrOfResults = []
for item in answers:
    page = requests.get("https://www.google.fr/search?q={}".format(line0+item))
    soup = BeautifulSoup(page.text, "html.parser")
    results = soup.find("div", {"id": "resultStats"})
    nbrOfResults.append(int(results.text[8:-10].encode("ascii",
    "replace").decode("utf-8").replace("?", "")))
print(answers[nbrOfResults.index(max(nbrOfResults))])
