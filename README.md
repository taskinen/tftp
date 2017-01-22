# TFTP server

Dockerized tftp-hpa server running in Alpine Linux.

## Example

```
version: '2'

services:
  server:
    image: taskinen/tftp
    ports:
      - "69:69/udp"
    volumes:
      - /var/docker-volumes/tftp/tftpboot:/var/tftpboot:ro
    restart: unless-stopped
```
