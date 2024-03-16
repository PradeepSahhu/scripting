#!/bin/bash
echo "Made by Pradeep Sahu (22BCS10284)"
# Check if a filename is provided as a command-line argument
if [ "$#" -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
fi

# Access the filename provided as the first command-line argument
foldername="$1"
indexfile="index.html"
javaFile="FirstApp.java"

mkdir $foldername
cd $foldername
mkdir WEB-INF
touch $indexfile
echo "Hello Pradeep" > $indexfile
touch $javaFile
cat "../firstServlet/FirstApp.java"> $javaFile
cd WEB-INF/
mkdir classes
touch web.xml
cat "../../firstServlet/WEB-INF/web.xml" > web.xml
cd ..
javac FirstApp.java
mv FirstApp.class "./WEB-INF/classes/"
cd ../../bin/
bash ./startup.sh



