#!/bin/bash

PROPRIETARY="proprietary-files.txt"

while [ "$1" != "" ]; do
    case $1 in
        -a | --added )       filter="A --cached"
                             ;;
        -m | --modified )    filter="M --cached"
                             ;;
    esac
done

FILES=$(git diff --name-only --diff-filter=$filter)
for FILE in $FILES; do
    SHA=$(sha1sum $FILE | awk '{print $1}')
    NAME=$(echo $FILE | sed 's/proprietary//' | sed 's/^[-\/]*//')
    echo "$NAME|$SHA" >> $PROPRIETARY
done

cat $PROPRIETARY | sort -u > temporary.txt
mv temporary.txt $PROPRIETARY
