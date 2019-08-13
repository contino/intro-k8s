### Deleting all resources used


```bash

#pods and services
kubectl delete po,svc --all   

#PersistentVolume
kubectl delete pv --all   

#controllers
kubectl delete deploy --all

kubectl delete rs --all

#resource quotas
kubectl delete quota --all

#namespace
kubectl delete namespace <insert-namespace-name-here>

```
