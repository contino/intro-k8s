+++
title = "Cleanup"
date = 2018-12-09T17:00:31-05:00
weight = 49
chapter = true
+++

### Deleting all resources used

All in one go
```
kubectl delete po,svc,pv,deploy,rs,qouta,namespace,configmaps,secrets,ing,daemonsets --all 
```

Pods and Services
```
kubectl delete po,svc --all   
```

PersistentVolume
```
kubectl delete pv --all   
```

Deployments
```
kubectl delete deploy --all
```

Replicaset
```
kubectl delete rs --all
```

Resource quotas
```
kubectl delete quota --all
```

Namespace
```
kubectl delete namespace <insert-namespace-name-here>
```

