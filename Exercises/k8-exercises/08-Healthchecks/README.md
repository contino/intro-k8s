
(Readiness and Liveliness](https://kubernetes.io/docs/tasks/configure-pod-container/configure-liveness-readiness-probes/)



## Readiness

Readiness checks let the kubelet know that the pod is ready to receive traffic. For example if this check fails the Service or Load balancer does send traffic to that pod.


## Liveliness

Liveliness checks inform the kubelet that the pod is running. If this check fails the kubelet will attempt to restart the pod.


### Exercises

```bash
#If you deleted the PV from the previous exercise please recreate it

kubectl apply -f mysql-pv.yaml

#Mysql conf needed for testing
kubectl create -f mysql-config.yaml

#Start the Mysql deployment
kubectl apply -f mysql-health.yaml

#Get the pod name
POD_NAME=`kubectl get pods -l app=mysql -o=jsonpath='{.items[0].metadata.name}'`
```

Describe pod should display a healthy pod
```bash
#copy the pod name and run
kubectl describe pod $POD_NAME

```

Breaking the readiness probe


```bash
kubectl exec $POD_NAME -c mysql -- mv /usr/bin/mysql /usr/bin/mysql.off

kubectl get pods -l app=mysql

NAME                     READY     STATUS    RESTARTS   AGE
mysql-6b98cc4475-xgwkp   0/1       Running   0          6m

kubectl describe pod $POD_NAME

Readiness probe failed: OCI runtime exec failed: exec failed: container_linux.go:348: starting container process caused "exec: \"/usr/bin/mysql\": stat /usr/bin/mysql: no such file or directory": unknown

kubectl exec $POD_NAME -c mysql -- mv /usr/bin/mysql.off /usr/bin/mysql


NAME                     READY     STATUS    RESTARTS   AGE
mysql-6b98cc4475-xgwkp   1/1       Running   0          6m
```
