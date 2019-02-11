+++
title = "Healthchecks"
date = 2018-12-09T17:00:31-05:00
weight = 470
chapter = true
+++

# Healthchecks

### What


### Why



# Exercises


## [Readiness and Liveliness](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-probes/)


## Readiness
Readiness checks let the kubelet know that the pod is ready to receive traffic. For example if this check fails the Service or Load balancer does send traffic to that pod.


## Liveliness

Liveliness checks inform the kubelet that the pod is running. If this check fails the kubelet will attempt to restart the pod.


