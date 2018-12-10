+++
title = "cleanup"
date = 2018-12-09T17:00:31-05:00
weight = 49
chapter = true
+++

### Deleting all resources used

```
#pods and services
kubectl delete po,svc --all   
```


```
#PersistentVolume
kubectl delete pv --all   
```


```
#controllers
kubectl delete deploy --all
```

```
#replicaset
kubectl delete rs --all
```

```
#resource quotas
kubectl delete quota --all
```

```
#namespace
kubectl delete namespace <insert-namespace-name-here>

```

