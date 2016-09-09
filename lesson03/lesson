#!/bin/bash

pause() {
    if [ -z "$1" ]
    then
        echo ""
        echo ""
        echo "Press enter to continue..."
    fi
    read
}

echo_eval() {
    clear
    echo $@
    pause -
    eval $@
}

echo_eval ab -n 60 -c 10 "https://api.github.com/zen"


pause
echo_eval curl -i https://api.github.com/zen
