


#!/bin/bash

# Function to keep record of the number of executions
record_execution() {
    # Define the file path to store the record
    record_file="/Users/pradeepsahu/Desktop/all-scripts/daily.sh"

    # Check if the record file exists
    if [ -f "$record_file" ]; then
        # Read the current count from the file
        count=$(<"$record_file")
    else
        # Initialize count to 0 if the file doesn't exist
        count=0
    fi

    # Increment the count
    ((count++))

    # Update the record file with the new count
    echo "$count" > "$record_file"

    # Output the execution count
    echo "Script executed $count times."
}

# Call the record_execution function to keep record
record_execution

# Your script's main functionality goes here
echo "file is being processed"


touch file.txt
git add .
git commit -m  "This is the file"
git push -u origin master
