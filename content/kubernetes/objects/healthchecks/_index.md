+++
title = "Healthchecks"
date = 2018-12-09T17:00:31-05:00
weight = 493
+++


### What

Healthchecks inform that kubelet that pods are ready to accept traffic

### Why

The distributed nature of kubernetes allows pods to come and go for a number of reasons, and if many are running
 a application the kubelet needs to know what a "healthy" pod looks like. 