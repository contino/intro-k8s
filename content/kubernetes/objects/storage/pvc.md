+++
title = "Persistent Volume Claims"
date = 2018-12-09T17:00:31-05:00
weight = 453
+++

Persistent Volume Claims (PVC's) - Allow pods to requests and attache Persistent Volumes available in the cluster. 

When used in with Dynamic provision and Storage Classes, PVC's can automatically make storage available on demand. 

Types of PVC's 

* GCEPersistentDisk
* AWSElasticBlockStore
* AzureFile
* CephFS

```yaml
kind: Pod
apiVersion: v1
metadata:
  name: mypod
spec:
  containers:
    - name: myfrontend
      image: nginx
      volumeMounts:
      - mountPath: "/var/www/html"
        name: mypd
  volumes:
    - name: mypd
      persistentVolumeClaim:
        claimName: myclaim
 ```