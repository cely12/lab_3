#!/bin/bash
# Authors : Connor Ely
# Date: 9/20/2019

#Problem 1 Code:
#Make sure to document how you are solving each problem!
echo "Enter a filename: "
read fileName
echo "Now enter a regex expression to search for: "
read phrase
grep $phrase $fileName
echo "Enter a pattern to search for all phone numbers: "
#[0-9][0-9][0-9]-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]
read regEx
grep $regEx $fileName -c
echo "Enter a pattern to search for all emails: "
#@
read regEx
grep $regEx $fileName -c
echo "Enter a pattern to search for all phone numbers with the 303 area code: "
#303-[0-9][0-9][0-9]-[0-9][0-9][0-9][0-9]
read regEx
grep $regEx $fileName
grep $"@geocities.com" $fileName >> email_results.txt
