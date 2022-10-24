#!/bin/bash

cd /app
./scripts/daily_update.sh > logs/daily_update.log 2>&1 &
export FLASK_APP=serve.py; flask run --host 0.0.0.0 --port 5000
