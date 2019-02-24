+++
title = "Volumes"
date = 2018-12-09T17:00:31-05:00
weight = 452
+++

Several volume types are supported

* awsElasticBlockStore
* azureDisk
* gcePersistentDisk
* hostPath
* secret
* configmaps

awsElasticBlockStore example yaml: 

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: test-ebs
spec:
  containers:
  - image: k8s.gcr.io/test-webserver
    name: test-container
    volumeMounts:
    - mountPath: /test-ebs
      name: test-volume
  volumes:
  - name: test-volume
    # This AWS EBS volume must already exist.
    awsElasticBlockStore:
      volumeID: <volume-id>
      fsType: ext4
```

