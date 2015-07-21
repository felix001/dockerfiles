# build image / container
# docker build -t felix001/djangoapp:1.0 djangoapp/
# docker run -it felix001/djangoapp:1.0 bash

from ubuntu:14.04
maintainer Ricky Donato, rickj07@gmail.com

RUN apt-get update -y && apt-get install -y \
    python
    python-setuptools
    build-essential
    python-dev

RUN easy_install pip

ADD requirements.txt /opt/requirements.txt
RUN cd /opt ; pip install -r requirements.txt
