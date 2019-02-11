+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 411
+++

{{%attachments style="blue" title="Kubernetes yaml files" pattern=".*(yaml)"/%}}

Update createNamespace.yaml with your namespace

Create your namespace
```
kubectl create -f ./createNamespace.yaml
```

Verify your namespace exists

```
$ kubectl get namespaces
NAME            STATUS    AGE
default         Active    1d
kube-system     Active    1d
kube-public     Active    1d
YOUR_NAME_SPACE Active    1d
```

Set your namespace to the default
```
kubectl config set-context $(kubectl config current-context) --namespace=<insert-namespace-name-here>
```

Validate it
```
kubectl config view | grep namespace:
```
