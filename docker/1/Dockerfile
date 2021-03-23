FROM local/aloha-0:2021.03.22

USER admin

RUN sudo apt update 
RUN sudo DEBIAN_FRONTEND=noninteractive apt install libpam-ldap unscd software-properties-common -y

RUN sudo add-apt-repository ppa:deadsnakes/ppa 
RUN sudo apt update 
RUN sudo apt install python3.9 -y

ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64-installer /tmp/
RUN sudo chmod +x /tmp/s6-overlay-amd64-installer && sudo /tmp/s6-overlay-amd64-installer /

