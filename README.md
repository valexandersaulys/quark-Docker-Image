# `quark` image for Docker

[Using Suckless' Quark HTTP server](https://tools.suckless.org/quark/)

[Link to Docker Hub](https://hub.docker.com/repository/docker/vasaulys/quark-server)


mount any directory to "/html" and start using!

Example of Usage:

```shell
docker run -v $(pwd)/landing-page-static:/html -p 8081:80 quark-server:latest
```
