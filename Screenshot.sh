#!/bin/bash
iQuality=100
screenshotDir="/home/david/Documents/gituhb/cashshowHeist/tmp"
iName="question.jpg"
question="$screenshotDir/$iName"
[ ! -d "$screenshotDir" ] && mkdir -p "$screenshotDir"
import   -w root -crop 482x126+3318+235 "$question"
 sudo /etc/sudoers.d/textcleaner -g $question $question
tesseract $question $question
print "---------------------------------------------------"
iQuality=100

iName1="rep1.jpg"
rep1="$screenshotDir/$iName1"
[ ! -d "$screenshotDir" ] && mkdir -p "$screenshotDir"
import   -w root -crop 419x79+3350+468 "$rep1"
 sudo /etc/sudoers.d/textcleaner -g $rep1 $rep1
tesseract $rep1 $rep1
print "---------------------------------------------------"

iQuality=100
iName2="rep2.jpg"
rep2="$screenshotDir/$iName2"
[ ! -d "$screenshotDir" ] && mkdir -p "$screenshotDir"
import   -w root -crop 422x75+3349+575 "$rep2"
 sudo /etc/sudoers.d/textcleaner -g $rep2 $rep2
tesseract $rep2 $rep2
print "---------------------------------------------------"

iQuality=100
iName3="rep3.jpg"
rep3="$screenshotDir/$iName3"
[ ! -d "$screenshotDir" ] && mkdir -p "$screenshotDir"
import   -w root -crop 414x77+3351+679 "$rep3"
 sudo /etc/sudoers.d/textcleaner -g $rep3 $rep3
tesseract $rep3 $rep3
print "---------------------------------------------------"
cd /home/david/Documents/gituhb/cashshowHeist/


python3.6 GoogleSearch.py
exit
