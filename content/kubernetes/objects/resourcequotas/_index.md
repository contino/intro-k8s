+++
title = "Resource Quotas"
date = 2018-12-09T17:00:31-05:00
weight = 430

+++

#### What

Requests - How much does this pod need to run

Limits - This pod only gets this much to run

#### Why
Kubernetes being a multi-tenant environment, some applications may hog resources and starve others, Resource Qoatas discourage this behavior 

#### Compute Resources
* CPU
* Memory
* Storage
   * requests.storage
   * persistentvolumeclaims
   * storage-class-name.storageclass.storage.k8s.io/requests.storage
   * storage-class-name.storageclass.storage.k8s.io/persistentvolumeclaims
* Object Count
   * configmaps
   * persistentvolumeclaims
   * pods
   * replicationcontrollers
   * resourcequotas
   * services
   * services.loadbalancers
   * services.nodeports
   * secrets

* Priority - low, medium, high


[More info](https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/quota-memory-cpu-namespace/)
