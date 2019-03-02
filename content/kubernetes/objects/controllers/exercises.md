+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 442
+++

In these exercises we will be working with these controllers, later we will working with Endpoints, since they are directly related to Services.

{{%attachments style="blue" title="Kubernetes yaml files" pattern=".*(yaml)"/%}}
   
[Deployment Controller](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) - Responsible for the controlled deployment of pods and ReplicaSets.

[ReplicaSets](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/) -  is the newest version of the Replication Controller. The only difference between a ReplicaSet and a Replication Controller right now is the selector support.

#### ReplicaSets

Create the replicaset
```bash
kubectl apply -f replicaset.yaml
```

Get the status of the replicaset
```
kubectl get replicaset
```

Retrieve detailed information about the replicaset
```
kubectl describe replicaset frontend
```

See the status of pods deployed with replicaset
```
kubectl get pods -l tier: frontend
```

Select one of the pods from the ReplicaSet

```
kubect port-forward <ONE_POD_FROM_REPLICASET> 8080:80
```

In another terminal window run

```
kubectl logs -f <POD_FROM_REPLICASET>
```

Go to http://localhost:8080/

You should see logs streaming to the console

Scale a ReplicaSet
```
kubectl scale --replicas=4 rs/frontend
```

The replicas will run 4 pods now
```
kubectl describe rs/frontend
```

```
kubectl get pods -l tier: frontend

```

#### Deployment Controller

Create the nginx deployment
```
kubectl create -f deploy-nginx.yaml
```

Get deployment information
```
kubectl get deployments
```
Where is the deployment
```
kubectl rollout status deployment/nginx-deployment
```

Update the deployments
```
kubectl apply -f deploy-nginx-1.9.1.yaml 
```
Where is the deployment
```
kubectl rollout status deployment/nginx-deployment
```

History of deployment
```
kubectl get replicaset
```

View the pods in the deployment
```
kubectl get pods
```

Get more detailed information about the deployment
```
kubectl describe deployment nginx-deployment
```

Scale the deployment
```
kubectl apply -f deploy-nginx-1.9.1-scale.yaml 
```

### Cleanup

```bash
kubectl delete -f replicaset.yaml

kubectl delete -f deploy-nginx.yaml

```


