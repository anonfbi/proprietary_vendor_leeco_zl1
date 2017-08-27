#!/bin/bash

PROPRIETARY="proprietary-files.txt"

function information {
    echo "sha1sum-files.sh:"
    echo ""
    echo "Uses git to process the manually added or modified"
    echo "blobs that are not extracted via extract-files.sh."
    echo ""
    echo "This is useful for devices that use another source"
    echo "for most of their blobs that are not the OEM ones."
    echo ""
    echo "Warning: Use ~ git add ~ to index the files before"
    echo "running this script."
    echo ""
    echo "Usage:"
    echo "./sha1sum-files.sh --added"
    echo "   This will pin all the new files in the git index."
    echo ""
    echo "./sha1sum-files.sh --modified"
    echo "   This will update the SHA for the modified files.."
    echo
}

while [ "$1" != "" ]; do
    case $1 in
        -a | --added )       filter="A --cached"
                             MODE="ADD"
                             ;;
        -m | --modified )    filter="M --cached"
                             MODE="MOD"
                             ;;
    esac
    shift
done

if [ -z "$filter" ]; then
    information
    exit 1
fi

# Query every changed file accounting to the respective filter.
FILES=$(git diff --name-only --diff-filter=$filter)
for FILE in $FILES; do
    SHA=$(sha1sum $FILE | awk '{print $1}')
    NAME=$(echo $FILE | sed 's/proprietary//' | sed 's/^[-\/]*//')
    # Just add the new files.
    if [ $MODE = "ADD" ]; then
        echo "$NAME|$SHA" >> $PROPRIETARY
    elif [ $MODE = "MOD" ]; then
        PINNED=$(cat $PROPRIETARY | grep $NAME | grep "|")
        if [ -z $PINNED ]; then
            # Pin the new modified file by appeding the new SHA.
            STRING=$(cat $PROPRIETARY | grep $NAME)
            sed -i -e "s#\b$STRING\b#&|$SHA#" $PROPRIETARY
        else
            # Just replace the old unique SHA with the new one.
            OLD=$(echo $PINNED | sed 's/.*[|]//')
            NEW=$SHA
            sed -i -e "s/$OLD/$NEW/g" $PROPRIETARY
        fi;
    fi;
done

# Organize the blobs file list with 'sort'.
cat $PROPRIETARY | sort -u > temporary.txt
mv temporary.txt $PROPRIETARY
