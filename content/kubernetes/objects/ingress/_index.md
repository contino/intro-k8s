+++
title = "ingress"
date = 2018-12-09T17:05:14-05:00
weight = 480
chapter = true

+++

### Ingress
 
#### What

Ingress is a K8 object that allows external access to resources inside the cluster
 
#### Why

Services, Pods and other objects are only accessible inside the cluster

```
                                internet
                                    |
                               [ Ingress ]
                               --|-----|--
                               [ Services ]
```
