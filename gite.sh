


#!/opt/homebrew/bin/bash


gitFile="./gitfile.txt"


if [ -f "$gitFile" ];
then
	echo "File Exist & Reading file contents"
else
	echo "File Doesn't Exist"
	echo "Creating a gitfile.txt"
	cat > "$gitFile" <<EOF
	This is the default message
EOF
	if [ -f "$gitFile" ];
	then
		echo "File created and added default message successfully"
	fi
fi

wait


while IFS= read -r line; do
	git add .
	wait
	git commit -m "$line"
	wait
	git push -u origin master
	wait

done < "$gitFile"
