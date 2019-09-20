#!/bin/bash
# Author : Laura Beisser and Wayne Wood
# Date : 9/20/19
# Problem 1 Code:
echo "Please enter a filename: "
read fileName
echo "Please enter a regex: "
read expres

# Problem 2 Code:
egrep "$expres" "$fileName"

#Problem 3 Code:
echo "The amount of phone numbers in the file is: "
egrep [0-9]{3}-[0-9]{3}-[0-9]{4}$ "$fileName" -c

#Problem 4 Code:
echo "The amount of emails in the file is: "
egrep [a-zA-Z0-9]@[a-zA-Z0-9]\.[a-z] "$fileName" -c
echo "Here is a list of the phone numbers with area code 303: "
egrep ^303-[0-9]{3}-[0-9]{4}$ "$fileName"
echo "A list of all @geocities.com emails will now be saved to a file."
egrep [a-zA-Z0-9]@geocities.com "$fileName" >> email_results.txt


