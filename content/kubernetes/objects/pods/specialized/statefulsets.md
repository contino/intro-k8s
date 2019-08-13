+++
title = "Statefulsets"
date = 2018-12-09T17:05:14-05:00
weight = 454

+++

#### What

Manages the deployment and scaling of a set of Pods , and provides guarantees about the ordering and uniqueness of these Pods.

#### Why

If your application requires the below artributes, a statefulset would a better option

* Stable, unique network identifiers.
* Stable, persistent storage.
* Ordered, graceful deployment and scaling.
* Ordered, automated rolling updates.

### ![](/intro-k8/images/kubernetes/sts.png) ) 