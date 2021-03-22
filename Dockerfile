FROM local/aloha-1:2021.03.22

ADD ldap.conf /etc/ldap.conf

ADD nsswitch.conf /etc/nsswitch.conf

ADD login /etc/pam.d/login

ADD nscd.conf  /etc/nscd.conf

RUN sudo mkdir -p /var/run/nscd/
RUN sudo chown unscd:unscd /var/run/nscd/

COPY ./services /etc/services.d/

ADD https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64-installer /tmp/
RUN sudo chmod +x /tmp/s6-overlay-amd64-installer && sudo /tmp/s6-overlay-amd64-installer /

ADD sudo-init /sudo-init

ENTRYPOINT [ "sudo-init" ]
