


#!/opt/homebrew/bin/bash


gitFile="./gitfile.txt"


if [ -f "$gitFile" ]
then
	echo "File Exist & Reading file contents"

fi

sleep 1

while IFS= read -r line; do
	git add .
	wait
	git commit -m "$line"
	wait
	git push -u origin master
	wait

done < "$gitFile"
