from andrewosh/binder-base

user root

FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
    rm -rf /var/lib/apt/lists/*

RUN wget https://github.com/henchc/THW-scikit-learn/blob/master/requirements.txt
RUN pip install -r requirements.txt
