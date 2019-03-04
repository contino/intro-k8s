+++
title = "Configmaps"
date = 2018-12-09T17:05:14-05:00
weight = 470
+++

### What

In order to keep the immutablity of a docker image, the configuration must live outside the container image, 
K8 config maps enable this. 

### Why
Secrets, env variables, and other environment specific items should not be baked into a container image.


### ![](/intro-k8/images/kubernetes/cm.png) 
