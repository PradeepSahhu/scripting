


#!/opt/homebrew/bin/bash


gitFile="./gitfile.txt"


if [ -f "$gitFile" ];
then
	echo "File Exist & Reading file contents"
else
	echo "File Doesn't Exist"
    echo "Do you want to create a file (y/n)"
    read message
    if [ "$message" == "y" ]; then
        echo "Creating a gitfile.txt"
        echo "Enter the commit message"
        read commit_message
        cat > "$gitFile" <<EOF
$commit_message
EOF
    
        if [ -f "$gitFile" ];
        then
            echo "File created and added default message successfully"
        else
            echo "Failed to create a file and exiting"
            exit 1
        fi
    else
        echo "Exiting the script"
        exit 1
    fi
fi

wait
echo "Made by Pradeep Sahu ( 22BCS10284 ) Link : https://www.linkedin.com/in/pradeep-sahu-759720224/"


while IFS= read -r line; do
	git add .
	wait
	git commit -m "$line"
	wait
	git push -u origin master
	wait

done < "$gitFile"
