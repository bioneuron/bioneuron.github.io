FROM node:13.2.0-stretch

RUN apt-get update && echo y | apt-get install apache2 \
    && service apache2 start

RUN useradd --create-home myapp
WORKDIR /home/myapp
USER myapp
