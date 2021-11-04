# `quark` image for Docker

To Run:

```bash
docker run --expose 8081 -e PORT=8081 -p 8080:8081 -v /tmp/html:/html vasaulys/quark-server
```

Meant for usage with
[jwilder/nginx-proxy](https://hub.docker.com/r/jwilder/nginx-proxy/)
and
[nginxproxy/acme-companion](https://hub.docker.com/r/nginxproxy/acme-companion). 


[Using Suckless' Quark HTTP server](https://tools.suckless.org/quark/)

[Link to Docker Hub](https://hub.docker.com/repository/docker/vasaulys/quark-server)


mount any directory to "/html" and start using!

Example of Usage:

```shell
docker run -v $(pwd)/landing-page-static:/html -p 8081:80 quark-server:latest
```
