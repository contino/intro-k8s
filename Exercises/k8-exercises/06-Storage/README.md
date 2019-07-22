[Persistent Volumes](https://kubernetes.io/docs/concepts/storage/persistent-volumes/)



## Exercises

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
