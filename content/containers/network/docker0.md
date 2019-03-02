+++
title = "Docker0 "
date = 2018-12-09T17:21:25-05:00
weight = 302
chapter = true

+++

# Container Networking

* When Docker starts, it creates a virtual interface called docker0 on the host machine
* docker0 is assigned a random IP address and subnet from the private range defined by RFC 1918
* It passes or switches packets between two connected devices just like a physical bridge or switch 
    * Host to container
    * Container to container
* Each new container gets one interface that is automatically attached to the docker0 bridge


![](/images/docker/docker0.png)