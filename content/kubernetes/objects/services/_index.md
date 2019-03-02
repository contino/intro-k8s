+++
title = "Services"
date = 2018-12-09T17:00:31-05:00
weight = 490
+++

### What

Service: a named abstraction of software service, consisting of a port that the proxy listens on,
and the selector that determines which pods will answer requests.

### Why

Pods come and go, and with that their IP address change rapidly. Services decouple the IP address from the application 
and serve as the IP address inside the cluster for an application running multiple pods. 

More info [here](https://kubernetes.io/docs/concepts/services-networking/service/)

### ![](/intro-k8/images/kubernetes/service.png) 
