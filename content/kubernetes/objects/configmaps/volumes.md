+++
title = "Configmaps - Volume"
date = 2018-12-09T17:05:14-05:00
weight = 471
+++


{{< highlight yaml "linenos=inline,hl_lines=8-10 14-16 ,linenostart=1" >}}
apiVersion: v1
kind: Pod
metadata:
  name: dapi-test-pod
spec:
  containers:
    - name: test-container
      image: k8s.gcr.io/busybox
      command: [ "/bin/sh", "-c", "ls /etc/config/" ]
      volumeMounts:
      - name: config-volume
        mountPath: /etc/config
  volumes:
    - name: config-volume
      configMap:
        name: special-config
  restartPolicy: Never
{{< / highlight >}}