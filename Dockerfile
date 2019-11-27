FROM node:13.2.0-stretch

RUN apt-get update && apt-get install apache2 \
    && systemctl restart apache2
    
RUN useradd --create-home myapp
WORKDIR /home/myapp
USER myapp
