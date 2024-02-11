




#!/bin/bash

# Get the current date and time
current_date=$(date +"%Y-%m-%d")

# Output the current date
echo "Current date: $current_date"

git add .
git commit -m "added and made changes to the main directory"
git push -u origin master

cd textFile


touch "$current_date" 
git add .
git commit -m  "This is the file"
git push -u origin master
