#!/bin/bash

PROJECT=<PROJECT> 

# Prepare log files and start outputting logs to stdout
touch /opt/logs/gunicorn.log
touch /opt/logs/access.log
#tail -n 0 -f /opt/logs/*.log &

# Start Gunicorn processes
echo Starting Gunicorn.
exec gunicorn PROJECT.wsgi:application \
    --name $PROJECT \
    --bind 0.0.0.0:8000 \
    --workers 3 \
    --log-level=info \
    --log-file=/opt/logs/gunicorn.log \
    --access-logfile=/opt/logs/access.log \
    "$@"
