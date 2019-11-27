FROM node:13.2.0-stretch

RUN sudo apt-get update && sudo apt-get install apache2 \
    && sudo systemctl restart apache2
