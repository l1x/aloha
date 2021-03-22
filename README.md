# aloha

Running Docker container with LDAP client

- ldap
- s6
- multiprocess

## Build

```bash
docker build . -t local/aloha-0:2021.03.22 --file docker/0/Dockerfile
```

```bash
docker build . -t local/aloha-1:2021.03.22 --file docker/1/Dockerfile
```

```bash
docker build . -t local/aloha-2:2021.03.22 --file Dockerfile
```

## Run

```bash
sudo docker run --rm -ti local/aloha-2:2021.03.22
[s6-init] making user provided files available at /var/run/s6/etc...exited 0.
[s6-init] ensuring user provided files have correct perms...exited 0.
[fix-attrs.d] applying ownership & permissions fixes...
[fix-attrs.d] done.
[cont-init.d] executing container initialization scripts...
[cont-init.d] done.
[services.d] starting services
Starting unscd...
Starting web app...
[services.d] done.
Serving HTTP on 0.0.0.0 port 8000 (http://0.0.0.0:8000/) ...
```
