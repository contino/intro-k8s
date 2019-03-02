+++
title = "Storage"
date = 2018-12-09T17:00:31-05:00
weight = 450
+++

### What

Storage like compute is another resource that must be managed. Kubernetes offers 3 types of storage 

* Volumes
* Persistent Volumes
* Persistent Volume Claims

### Why

The Ephemeral nature of pods and containers lead to the need for data to be have a decoupled lifecycle outside of
containers and pods.

### ![](/intro-k8/images/kubernetes/pv.png) 
