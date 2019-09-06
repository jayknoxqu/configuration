#!/bin/bash

REPOSITORY_PATH=$1

if [ "$REPOSITORY_PATH" = "" ]; then

    echo "Usage: $0 <maven_repository_path>"
    echo "Example: $0 ~/.m2/repository"
    echo "Explain: "~" is your profile's home directory"
    
    exit 1
fi

echo "Began clean lastUpdated file"

for f in `find $REPOSITORY_PATH -name "*lastUpdated*"`
    do
        echo $f & rm $f
    done

echo "End clean lastUpdated file."