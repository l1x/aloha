FROM local/aloha-0:2021.03.22

USER app

RUN sudo apt update 
RUN sudo DEBIAN_FRONTEND=noninteractive apt install libpam-ldap unscd software-properties-common -y

RUN sudo add-apt-repository ppa:deadsnakes/ppa 
RUN sudo apt update 
RUN sudo apt install python3.9 
