+++
title = "Daemonsets"
date = 2018-12-09T17:05:14-05:00
weight = 495
+++

### Daemonsets

#### What

Specialized deployments that will deploy pods on every node in the cluster

#### Why

* running a cluster storage daemon, such as glusterd, ceph, on each node.
* running a logs collection daemon on every node, such as fluentd or logstash.
* running a node monitoring daemon on every node, 
    * Prometheus Node Exporter
    * collectd
    * Dynatrace OneAgent
    * AppDynamics Agent
    * Datadog agent
    

### ![](/images/kubernetes/ds.png) 