+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 47
+++

Create the persistent and the claim
```bash
kubectl apply -f mysql-pv.yaml
```

Create a pod that will use it.

```bash
kubectl apply -f mysql-pod.yaml

```

### Clean up
```bash
kubectl delete -f mysql-pv.yaml

kubectl delete -f mysql-pod.yaml

```

