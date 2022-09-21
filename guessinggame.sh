#!/usr/bin/envbash
# File: guessinggame.sh

function guessfiles {
    let count=$(ls -l | grep ^- | wc -l | egrep -o "[0-9]+")
    echo "Enter number of files in current directory:"
    read value
    while [[ value != count ]]
    do
        if [[ value -eq count ]]
        then
            echo "Congratulations, you guessed it right !!"
            exit
        elif [[ value -gt count ]]
        then
            echo "Guess a lower number"
        elif [[ value -lt count ]]
        then
            echo "Guess a bigger number"
        fi
        read value
    done
}
guessfiles