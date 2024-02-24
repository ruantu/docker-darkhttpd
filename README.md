# Docker-Darkhttpd
Simple Docker Darkhttpd image based on Alpine.

## Introductions
This project aims to run commonly used NAS software in Docker.

## How to build

### Build command
`docker build -t ruantu/darkhttpd:latest .`

## How to use

### Mapping port
- HTTP Port: `80 TCP`

### Mounting volumes
- Storing directory for media files: `/var/www/htdocs`

### Software packages
- [darkhttpd](https://pkgs.alpinelinux.org/packages?name=darkhttpd&branch=edge&repo=&arch=&maintainer=)
