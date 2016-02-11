#!/bin/bash

/etc/init.d/redis-server start
su -m celery -c "celery worker -A run.celery -Q ${QUEUE} -l ${CELERY_LOG_LEVEL} --autoscale=10,3"
