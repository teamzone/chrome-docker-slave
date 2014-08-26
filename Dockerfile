FROM knban/strider-docker-slave
MAINTAINER Keyvan Fatehi <keyvanfatehi@gmail.com>
USER root
RUN curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
RUN echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list
RUN apt-get update
RUN apt-get install -y xvfb google-chrome-stable
RUN npm install -g chromedriver
USER strider
ENV DISPLAY :99
