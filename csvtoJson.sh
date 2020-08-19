#!/bin/bash

# Define var date.
date=$(date +"%m_%d_%Y_%H:%M")

# Imput from user on what file they wont to use.
echo What text file do you want to Work with?

# Read txt file.
read filename

# Cat txt file and pipe to tr and replace white space with ",". Then output file to .csv.
cat $filename | tr " " "," > file_$date.csv

# Use jq to split csv into json formant and out put to .json.
# The split starts from row 0 and using "," to define the split, making each "," seperation its own feild.
# This make it easier to drill down into the data and change what you want from it , or make it harder if you need more generic data.
jq --slurp --raw-input \
   'split("\n") | .[0:] | map(split(",")) |
      map({
         "Log entry": [.[0], .[3], .[4], .[5], .[6], .[7], .[8], .[9], .[10], .[11], .[14], .[15], .[16], .[17], .[18]],
          }
      )' \
  file_$date.csv > output.json
