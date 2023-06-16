# TFTP server

Dockerized TFTP server running in Alpine Linux.

## Example

To use this container as a TFTP server for PXE boot, start the
container with the following Compose configuration:

```
version: '3'

services:
  tftp-server:
    image: ghcr.io/wxx9248/tftpd:latest
    entrypoint: in.tftpd
    command: -L -4 --secure --address 0.0.0.0:69 --verbosity 3 /var/tftpboot
    ports:
      - "0.0.0.0:69:69/udp"
    volumes:
      - ./tftpboot:/var/tftpboot:ro
    restart: unless-stopped
```

Put your `pxelinux.0` boot file to `./tftpboot` directory and configure
your DHCP server to issue command to boot your clients from `pxelinux.0`
from your Docker host's IP address.
