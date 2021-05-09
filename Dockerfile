FROM ubuntu:18.04

#WORKDIR /Intakt

#ARG ARTIFACTORY_PASSWORD
#ARG ARTIFACTORY_USERNAME

#Set locale
RUN apt-get update && apt-get install -y locales locales-all

ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV TZ Europe/Berlin
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64/
#ENV INTAKT_WORKSPACE .
#ENV ARTIFACTORY_PASSWORD=$ARTIFACTORY_PASSWORD
#ENV ARTIFACTORY_USERNAME=$ARTIFACTORY_USERNAME

RUN apt-get update && \
    apt-get install -y openjdk-8-jdk && \
    apt-get install -y ant && \
    apt-get clean;

RUN apt-get update && \
    apt-get install ca-certificates-java && \
    apt-get clean && \
    update-ca-certificates -f;

RUN apt-get update && \
    apt-get -y install curl gnupg && \
    curl -sL https://deb.nodesource.com/setup_11.x  | bash - && \
    apt-get -y install nodejs && \
    npm install

RUN apt-get install libxss1 && \
    apt-get install -y libgtk-3-dev && \
    npm install gulp && \
    npm install husky@2.4 --save-dev && \
    npm update

#COPY . .
#
#RUN ./gradlew clean build --no-daemon
#Build image
#docker build --build-arg ARTIFACTORY_PASSWORD={artifactoryPasswordEnv} --build-arg ARTIFACTORY_USERNAME={artifactoryUsernameEnv}  -t intakt .