FROM ubuntu
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -y install gcc mono-mcs && \
    
ADD requirements.txt /
RUN pip install -r requirements.txt
