+++
title = "Docker Network options"
date = 2018-12-09T17:21:25-05:00
weight = 301
chapter = true

+++

# Docker Networking options

Flag value   | Description
| :---       |    :----   
-p 8080:80	| Map TCP port 80 in the container to port 8080 on the Docker host.
-p 192.168.1.100:8080:80	| Map TCP port 80 in the container to port 8080 on the Docker host for connections to host IP 192.168.1.100.
-p 8080:80/udp	| Map UDP port 80 in the container to port 8080 on the Docker host.
-p 8080:80/tcp -p 8080:80/udp	| Map TCP port 80 in the container to TCP port 8080 on the Docker host, and map UDP port 80 in the container to UDP port 8080 on the Docker host.

