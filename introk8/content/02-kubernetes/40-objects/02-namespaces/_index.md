+++
title = "Namespaces"
date = 2018-12-09T17:05:14-05:00
weight = 41
chapter = true

+++

[Namespaces](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/)

Update [createNamespace.yaml](kubernetes/objects/namespaces/createNamespace.yaml) with what your namespace to be

Create your namespace
```bash
kubectl create -f ./createNamespace.yaml
```

Verify your namespace exists

```bash
$ kubectl get namespaces
NAME          STATUS    AGE
default       Active    1d
kube-system   Active    1d
kube-public   Active    1d
```

Set your namespace to the default

```bash
$ kubectl config set-context $(kubectl config current-context) --namespace=<insert-namespace-name-here>
# Validate it
$ kubectl config view | grep namespace:

```
