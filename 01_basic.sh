#!/opt/homebrew/bin/bash    #SHEBANG LINE - it tells from where to execute the bash

#This is a comment.
<<comment

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
#read -p "Enter your userName "  name
#echo "The user inputted the $name"


# Arithmetic operations.

x=10
y=2
let mul=$x*$y
echo "The multiplication is $mul"

#alternative


# echo "The subraction is $(($x-$y))"

# conditional Statements.

<<comment

read -p "Enter your marks : " marks
if [[ $marks -gt 40 ]]
then
     echo "you are pass"
else
     echo "you are fail"

fi

comment

#Multiple comments [ should be single space between square brackets on both sides ]

<<comment

read -p "Enter your marks : " marks 

if [[ $marks -ge 80 ]]
then 
	echo "First Division"
elif [[ $marks -ge 60 ]]
then
	echo "Second Division"
else
	echo "Fail"

fi

comment


# switch case statement.

<<comment
echo "provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice

case $choice in 
	a)
		echo "Today's date is:"
		date
		echo "Ending...."
		;;
	b)ls;;
	c)pwd;;
	*)echo "please provide a valid"

esac

comment


# And Operator

# command1 && command2
# command1 || command2
# -eq is used to compare numeric digits == is used to compare strings.

<<comment

age=21
country="India"
if [[ $age -gt 18 ]] && [[ $country == "India" ]] && echo "You are above 18"
then 
	echo "You can vote"

fi

comment

<<comment

read -p "Enter your age : " age

#short form of if statements and ternary statement.

[[ $age -ge 18 ]] && echo "Adult" || echo "Minor"

comment

<<comment
for i in 1 2 3 4 5 6 7 8 9 10
do 
	echo "Number is $i"
done

comment


<<comment
for name in Raju Sham Baburao
do
	echo "name is $name"
done

comment

<<comment

for i in {1..20}
do
	echo "Number is $i"
done

comment

# using for loop with file


# Getting values from the file names.txt

<<comment

FILE="/Users/pradeepsahu/Desktop/all-scripts/names.txt"

for name in $(cat $FILE)
do 
	echo "Name is $name"

done

comment

comment



myArray=( 1 2 3 Hello hi )

length=${#myArray[*]}

echo "$length"

for (( i=0;i<$length;i++ ))
do 
	echo "Value of Array is ${myArray[$i]}"
done




















