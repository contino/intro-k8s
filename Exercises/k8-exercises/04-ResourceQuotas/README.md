

[Resource Quotas](https://kubernetes.io/docs/tasks/administer-cluster/manage-resources/quota-memory-cpu-namespace/)


Deploy default resources quotas for your namespace
```bash
kubectl create -f quotas.yaml

kubectl describe quota
```

Verify qoutas
```bash
kubectl get resourcequota mem-cpu-rq --output=yaml
```

Deploy specific limits and requests for pods
```bash
kubectl create -f pod-limits.yaml

kubectl describe limits mem-limit-range
```

Deploy pods with only limits
```bash
kubectl create -f pod-only-limit.yaml

Error from server (Forbidden): error when creating "pod-only-limit.yaml": pods "only-limits" is forbidden: failed quota: mem-cpu-rq: must specify limits.cpu,requests.cpu

```

Deploy pods with only requests
```bash
kubectl create -f pod-only-request.yaml

Error from server (Forbidden): error when creating "pod-only-request.yaml": pods "only-requests" is forbidden: failed quota: mem-cpu-rq: must specify limits.cpu,requests.cpu

```

Deploy pod with neither and see defaults applied from the namespace
```bash
kubectl create -f pod-no-quotas.yaml

Error from server (Forbidden): error when creating "pod-no-quotas.yaml": pods "no-quotas" is forbidden: failed quota: mem-cpu-rq: must specify limits.cpu,requests.cpu
```
### Please Delete Quotas! ###

```bash
kubectl delete -f quotas.yaml

kubectl delete -f pod-limits.yaml
```
