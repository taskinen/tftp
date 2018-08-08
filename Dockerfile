FROM alpine:3.8
LABEL maintainer="Timo Taskinen <timo.taskinen@iki.fi>"
RUN apk add --no-cache tftp-hpa
EXPOSE 69/udp
ENTRYPOINT ["in.tftpd"]
CMD ["-L", "--secure", "/var/tftpboot"]
