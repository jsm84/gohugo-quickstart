FROM registry.access.redhat.com/ubi9/ubi-minimal:latest

WORKDIR /app

ARG BUILDREPO https://github.com/jsm84/simplehttpserver/releases/download/v0.0.7/simplehttpserver_0.0.7_linux_amd64

ADD --chmod=0755 $BUILDREPO /app/simplehttpserver

ADD public/ /app/public

EXPOSE 8000
ENTRYPOINT ["/app/simplehttpserver"]
CMD ["-path", "/app/public"]
