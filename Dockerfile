FROM ubuntu

MAINTAINER Alex woodhouse <alexander.woodhouse@perfect.com>

RUN apt-get update

RUN apt-get -y install python-software-properties
RUN apt-get -y install software-properties-common
RUN apt-get -y install openjdk-8-jdk
RUN apt-get -y install maven
RUN apt-get -y install git
RUN apt-get -y install curl
RUN curl -sL https://deb.nodesource.com/setup_9.x | bash -
RUN apt-get install -y nodejs

WORKDIR /opt
RUN git clone https://github.com/angular/angular-cli
RUN npm install -g @angular/cli
RUN ng new sample
WORKDIR /opt/sample
