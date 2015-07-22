# build image / container
# docker build -t felix001/djangoapp:1.0 djangoapp/
# docker run -i -t -p 127.0.0.1:8000:8000 -v /home/djangoapp:/home/djangoapp felix001/djangoapp:1.0

from ubuntu:14.04
maintainer Ricky Donato, rickj07@gmail.com

RUN apt-get update -y && apt-get install -y \
    python \
    python-setuptools \
    build-essential \
    python-dev

RUN easy_install pip

ADD requirements.txt /opt/requirements.txt
RUN cd /opt ; pip install -r requirements.txt
