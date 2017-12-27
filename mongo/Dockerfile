############################################################
# Dockerfile to build Mongo Containers
# Based on Ubuntu
# NOTE : does not add users
############################################################

FROM       ubuntu:14.04
RUN        \
           apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 && \
           echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list && \
           apt-get update && \
           apt-get install -y mongodb-org
VOLUME     ["/var/db"]
WORKDIR    /var/db
EXPOSE     27017
ENTRYPOINT ["/usr/bin/mongod"]
CMD        ["--auth"]
