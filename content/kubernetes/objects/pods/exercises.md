+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 421
+++

[Kubernetes github repo](/intro-k8/introduction/requirements/#github-https-github-com)

### Start a pod from a manifest

```bash
kubectl apply -f single-pod-nginx.yaml
```

### Verify the state of the pod
```bash
kubectl get pods
NAME  READY STATUS  RESTARTS  AGE
nginx 1/1   Running 0         44s
```
### Get more details of the pod
```bash
kubectl describe pod nginx
```

### Accessing your pod
```bash
kubectl port-forward nginx 8080:80
```

### Logs
```bash
kubectl logs -f nginx
```

Navigate to http://localhost:8080 in your web browser

### Multi container pod

### Start a pod from a manifest
```bash
kubectl apply -f multi-pod.yaml
```

```bash
kubectl describe pod multi-pod
```
### Accessing your pod

```bash
kubectl port-forward multi-pod 8080:80
```
Navigate to http://localhost:8080/date.log in your web browser

### Cleanup

```bash
kubectl delete -f single-pod-nginx.yaml

kubectl delete -f multi-pod.yaml
```

