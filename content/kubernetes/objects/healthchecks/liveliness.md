+++
title = "Liveliness"
date = 2018-12-09T17:00:31-05:00
weight = 495

+++

### [Readiness and Liveliness](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-probes/)

## Liveliness

Liveliness checks inform the kubelet that the pod is running. If this check fails the kubelet will attempt to restart the pod.


```yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    test: liveness
  name: liveness-exec
spec:
  containers:
  - name: liveness
    image: k8s.gcr.io/busybox
    args:
    - /bin/sh
    - -c
    - touch /tmp/healthy; sleep 30; rm -rf /tmp/healthy; sleep 600
    livenessProbe:
      exec:
        command:
        - cat
        - /tmp/healthy
      initialDelaySeconds: 5
      periodSeconds: 5
 ```