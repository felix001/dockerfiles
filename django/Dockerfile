############################################################
# Dockerfile to build Django Containers
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
    vim

# Set variables for project name, and where to place files in container.
ENV PROJECT=XXXX    
ENV SOURCE_PROJECT=$PROJECT
ENV CONTAINER_HOME=/opt
ENV CONTAINER_PROJECT=$CONTAINER_HOME/$PROJECT

# Create application subdirectories
WORKDIR $CONTAINER_HOME
RUN mkdir logs

# Copy application source code to $CONTAINER_PROJECT
COPY $SOURCE_PROJECT $CONTAINER_PROJECT

# Install Python dependencies
RUN pip install -r $CONTAINER_PROJECT/requirements.txt

# Port to expose
EXPOSE 8000

# Copy entrypoint script into the image
WORKDIR $CONTAINER_PROJECT
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
