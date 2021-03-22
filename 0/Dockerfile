FROM ubuntu:bionic-20210222

RUN apt-get clean && apt-get update

RUN apt-get install --reinstall ca-certificates -y

RUN apt-get install sudo apt-transport-https ca-certificates -y

RUN useradd -m -u 5000 app || :
RUN echo 'app ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

RUN apt-get clean

USER app
