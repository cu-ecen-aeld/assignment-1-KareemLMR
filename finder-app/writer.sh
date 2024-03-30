#!/bin/bash

WRITEFILE=$1
WRITESTR=$2

if [ -z "$WRITEFILE" ] || [ -z "$WRITESTR" ]
then
	echo "Error: writefile not specified or empty writestr, usage: write.sh writefile writestr"
	exit 1
fi

mkdir -p "$WRITEFILE"
touch "$WRITEFILE"
rmdir "$WRITEFILE"
echo "$WRITESTR" > "$WRITEFILE"

if [ $? -ne 0 ]
then
	echo "Error: Failed to create file in the specified path."
	exit 1
fi

exit 0
