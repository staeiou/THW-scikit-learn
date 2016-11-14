from andrewosh/binder-base

user root

FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc-4.9 mono-mcs && \
    rm -rf /var/lib/apt/lists/*

ADD requirements.txt /
RUN pip install -r /requirements.txt
