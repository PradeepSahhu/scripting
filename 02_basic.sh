#!/opt/homebrew/bin/bash    #SHEBANG LINE - it tells from where to execute the bash




myArray=( 1 2 3 Hello hi )

length=${#myArray[*]}
echo "$length"
for ((i=0;i<$length;i++))
do
        echo "Value of Array is ${myArray[$i]}"
done


count=0
num=10

while [[ $count -le $num ]]
do 
	echo "Numbers are $count"
	let count++
done



# until loop ( it will run until the condition is false )


a=10
until [[ $a -eq 1 ]]
do
	echo "Value of a is $a"
	let a--
done

# infinite loop

<<comment
while true
do
	echo "Hi buddy"
	sleep 2s
done
comment

<<comment

for (( ;; ))
do
	echo "hi buddy"
	sleep 2
done

comment


<<comment

# To read content from a file

while read myVar
do
	echo $myVar

done < names.txt

comment


# To read data from a csv file.


while IFS="," read f1 f2 f3
do
	echo $f1
	echo $f2
	echo $f3

done < newFile.csv










































