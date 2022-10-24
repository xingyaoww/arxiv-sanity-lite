#!/bin/bash

function daily_update(){
    python3 arxiv_daemon.py --num 2000

    if [ $? -eq 0 ]; then
        echo "New papers detected! Running compute.py"
        python3 compute.py
    else
        echo "No new papers were added, skipping feature computation"
    fi
}

# Run daily_update() every 24 hours
while true; do
    daily_update
    echo "Sleeping for 24 hours"
    sleep 86400
done
