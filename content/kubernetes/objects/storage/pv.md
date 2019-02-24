+++
title = "Persistent Volume"
date = 2018-12-09T17:00:31-05:00
weight = 453
+++

Persistent Volumes (PV's) are a piece of storage provisioned in a cluster and can be used/reference in the cluster
like another other resource. 

Provisioning - Static or Dynamic 

Types of PV's 

* GCEPersistentDisk
* AWSElasticBlockStore
* AzureFile
* CephFS

```yaml
kind: PersistentVolume
apiVersion: v1
metadata:
  name: task-pv-volume
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Gi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/mnt/data"
 ```