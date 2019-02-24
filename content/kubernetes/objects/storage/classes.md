+++
title = "Storage Classes"
date = 2018-12-09T17:00:31-05:00
weight = 454
+++

Storage classes allow cluster administrators to provide varing levels of support and types of storage to applications 
in a cluster


Example: Storage class that will provision an AWS EBS Volumes when referenced a PVC

```yaml
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: standard
provisioner: kubernetes.io/aws-ebs
parameters:
  type: gp2
reclaimPolicy: Retain
mountOptions:
  - debug
volumeBindingMode: Immediate
```