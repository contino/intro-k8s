+++
title = "Secrets Uses - File"
date = 2018-12-09T17:05:14-05:00
weight = 462

+++

```yaml
apiVersion: v1
   kind: Pod
   metadata:
     name: mypod
   spec:
     containers:
     - name: mypod
       image: redis
       volumeMounts:
       - name: foo
         mountPath: "/etc/foo"
         readOnly: true
     volumes:
     - name: foo
       secret:
         secretName: mysecret
```
