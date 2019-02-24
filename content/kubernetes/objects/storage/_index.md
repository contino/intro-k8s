+++
title = "Storage"
date = 2018-12-09T17:00:31-05:00
weight = 450
+++

### [Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)

### What

Volumes are attached storage that can be mounted to worker nodes and atttached to pods

### Why

The Ephemeral nature of pods and containers lead to the need for Data and permanent information to be saved outside the lifecycle a pod, PV's fill that requirement