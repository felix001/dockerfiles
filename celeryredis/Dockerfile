############################################################
# Dockerfile to build Celery Redis Containers
# Based on Ubuntu
############################################################

# Set the base image to Ubuntu
FROM ubuntu:14.04

# File Author / Maintainer
MAINTAINER Maintaner Ricky Donato

# Update the default application repository sources list
RUN apt-get update && apt-get install -y \
    python \
    python-pip \
    python-setuptools \
    build-essential \
    python-dev \
    vim \
    redis-server

# Install Python dependencies
RUN pip install celery[redis]

# Port to expose
EXPOSE 6379

# Run script
CMD ["./runscript.sh"]
