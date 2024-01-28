#!/opt/homebrew/bin/bash    #SHEBANG LINE - it tells from where to execute the bash

#This is a comment.


echo "make a file using either vi or touch command"
echo "# is used to give comments"
wait
echo "<<comment

this is used for multi-line comments

comment"

wait 

<<comment

this is
multiline
comments


comment


#Script to use how to use variables

a=21
name="Pradeep"
echo "My name is $name And age is $a"

# var to store the output of a command.

HOSTNAME=$(hostname)
echo "$HOSTNAME"

# Define the constant variable.
readonly COLLEGE="Chandigarh University"

echo "$COLLEGE"



# Arrays are used to store multiple values.

# Arrays can store value of multiple data types.

myArray=(1 20 30.4 Hello "Pradeep")


echo "${myArray[0]}"
echo "${myArray[1]}"
echo "All the values in the array are ${myArray[*]}"


echo "Accessing the values from 2nd index to next 3 ${myArray[*]:2:3}"

# updating the array with new values.


myArray+=(New 30 40)

echo "Values of new Array are : ${myArray[*]}"




# Define the Array with key value pairs.
 

# Declaring the array.

declare -A my_array

my_array=( [name]=Pradeep [age]=21 [city]=Delhi )

echo "Name is ${my_array[name]}"
echo "age is ${my_array[age]}"

ss="Pradeep"
echo "${#ss}" # output is the length of the string

#user Interaction
#Taking input from the user.

#echo "Enter your user Name"
read -p "Enter your userName "  name
echo "The user inputted the $name"

