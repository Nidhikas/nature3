FROM nginx

MAINTAINER "nidhikashyap168@gmail.com"


RUN apt-get update && apt-get upgrade -y && apt-get -y install net-tools

RUN useradd -m -d /home/babu -s /bin/bash babu
WORKDIR /home/babu
ADD target/nature3.war .

ENTRYPOINT service nginx start && bash

