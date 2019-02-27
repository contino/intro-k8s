+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 497
+++

### Exercises

{{%attachments style="blue" title="Kubernetes yaml files" pattern=".*(yaml)"/%}}

If you deleted the PV from the previous exercise please recreate it
```bash
kubectl apply -f mysql-pv.yaml
```

Mysql conf needed for testing
```bash
kubectl create -f mysql-config.yaml
```

Start the Mysql deployment
```
kubectl apply -f mysql-health.yaml
```

Get the pod name
```
POD_NAME=$(kubectl get pods -l app=mysql -o=jsonpath='{.items[0].metadata.name}')
```

Describe pod should display a healthy pod
```
kubectl describe pod $POD_NAME

```

Breaking the readiness probe
```
kubectl exec $POD_NAME -c mysql -- mv /usr/bin/mysql /usr/bin/mysql.off
```

Check to see if the pods is running
```
kubectl get pods -l app=mysql
```

Output if the pod is not running
```
NAME                     READY     STATUS    RESTARTS   AGE
mysql-6b98cc4475-xgwkp   0/1       Running   0          6m
```

Get more details about the pod
```
kubectl describe pod $POD_NAME
```

Output from the error
```
Readiness probe failed: OCI runtime exec failed: exec failed: container_linux.go:348: starting container process caused "exec: \"/usr/bin/mysql\": stat /usr/bin/mysql: no such file or directory": unknown
```

Fix the readiness probe
```
kubectl exec $POD_NAME -c mysql -- mv /usr/bin/mysql.off /usr/bin/mysql
```

Output now that the pods is running again
```
NAME                     READY     STATUS    RESTARTS   AGE
mysql-6b98cc4475-xgwkp   1/1       Running   0          6m
```
