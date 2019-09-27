#!/bin/bash
# Authors : Connor Ely
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: "
read fileName
#Here I am asking the user to enter the file name by printing the question to the console and taking in the name as fileName
echo "Now enter a regex expression to search for: "
read phrase
#Here I am taking in the expression we are searching for by using the variable phrase
grep $phrase $fileName
#This is the actual search for the phrase in the document using grep
echo "Enter a pattern to search for all phone numbers: "
#This is asking the user to input a regex pattern to search for any phone numbers. A sample pattern that would fulfill this requirement is: [0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]
read regEx
grep $regEx $fileName -c
#Here we are actually searching for the phone numbers using grep
echo "Enter a pattern to search for all emails: "
#Here I am asking the using to input a pattern to search for all emails. A regex pattern that would accomplish this would just be @
read regEx
grep $regEx $fileName -c
#Actually searching for the emails using grep and displaying the count
echo "Enter a pattern to search for all phone numbers with the 303 area code: "
#Asking the user to input a regex pattern to search for all numbers starting with the 303 area code. A sample pattern that would do this is:303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]
read regEx
grep $regEx $fileName
#Actually going through and searching the file for all of the 303 area code numbers and printing them out to the terminal
grep $"@geocities.com" $fileName >> email_results.txt
#Here I am looking for all emails from geocities.com and appending them to email_results.txt which will write them on this file
