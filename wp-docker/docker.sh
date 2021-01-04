#!/usr/bin/env bash

RESULTS_STRING="..........END.........."
LINE_STRING="------------------------------"
INFO_SUCCESS_STRING=""
echo "Choose function: "
echo "1. Start docker."
echo "2. Stop docker."
echo "3. Stop and Remove everything."
echo $LINE_STRING
while :
do
    echo "Choose number: "
    read INPUT_NUMBER
    case $INPUT_NUMBER in
        1)
            echo "Starting containers ...!"
            echo $LINE_STRING
            docker-compose up -d
            INFO_SUCCESS_STRING="Start container successfully."
            break
            ;;
        2)
            echo "Stopping containers ...!"
            docker-compose down
            INFO_SUCCESS_STRING="Stop container successfully."
            break
            ;;
        3)
            echo "Stop and Remove everything...!"
            ./stop-and-remove.sh
            INFO_SUCCESS_STRING="Stop and Remove successfully."
            break
            ;;
        *)
            echo "Sorry, I don't understand"
            ;;
    esac
done

echo $LINE_STRING   
echo $INFO_SUCCESS_STRING
echo $RESULTS_STRING
