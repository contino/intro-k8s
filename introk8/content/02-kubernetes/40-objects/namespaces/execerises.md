+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 42
+++

Update [createNamespace.yaml](kubernetes/objects/namespaces/createNamespace.yaml) with what your namespace is

Create your namespace
```
kubectl create -f ./createNamespace.yaml
```

Verify your namespace exists

```
$ kubectl get namespaces
NAME          STATUS    AGE
default       Active    1d
kube-system   Active    1d
kube-public   Active    1d
```

Set your namespace to the default

```
kubectl config set-context $(kubectl config current-context) --namespace=<insert-namespace-name-here>
```
Validate it
```
kubectl config view | grep namespace:
```
