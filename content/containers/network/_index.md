+++
title = "Network"
date = 2018-12-09T17:21:25-05:00
weight = 300
chapter = true

+++

# Container Networking

* Docker uses iptables to provide network isolation
* Explicitly publish a port for connectivity to it
* Containers do not have a public IPv4 address
* They are allocated a private address
* Services running on a container must be exposed port by port
* Container ports have to be mapped to the host port to avoid conflicts

[More information here](https://success.docker.com/article/networking)