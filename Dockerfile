FROM ubuntu

MAINTAINER Alex woodhouse <alexander.woodhouse@perfect.com>

COPY dockerGo.sh /opt

RUN apt-get update; apt-get -y install python-software-properties software-properties-common openjdk-8-jdk maven git curl;curl -sL https://deb.nodesource.com/setup_9.x | bash -;apt-get install -y nodejs

WORKDIR /opt
RUN git clone https://github.com/angular/angular-cli;npm install --unsafe-perm -g @angular/cli

WORKDIR /opt/mount/AngularServer
