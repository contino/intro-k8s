

# [Controllers](https://kubernetes.io/docs/concepts/workloads/controllers/)

In Kubernetes, a controller is a control loop that watches the shared state of the cluster through the apiserver and makes changes attempting to move the current state towards the desired state. There are several in the Kubernetes Architecture that support different functions in the system.

[Namespace controller](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/) - Creates and updates the Namespaces in kubernetes

[Serviceaccounts controller](https://kubernetes.io/docs/reference/access-authn-authz/service-accounts-admin/) - Manages the service accounts in the system, which are for processes to interact with Kubernetes.

[Node Controller](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-controller-manager/): Responsible for noticing and responding when nodes go down.
Service Account & Token Controllers: Create default accounts and API access tokens for new namespaces.

[Replication Controller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/) - Responsible for maintaining the correct number of pods for every replication controller object in the system. **ReplicaSets are the preferred method**

[Endpoints Controller](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#endpoints-v1-core) - Populates the Endpoints object (that is, joins Services & Pods). When services are created, the Endpoint controller manages the connection between services and the pods back the service.


### Exercises

In this exercise we will be working with these controllers, later we will working with Endpoints, since they are directly related to Services.

[Deployment Controller](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) - Responsible for the controlled deployment of pods and ReplicaSets.

[ReplicaSets](https://kubernetes.io/docs/concepts/workloads/controllers/replicaset/) -  is the newest version of the Replication Controller. The only difference between a ReplicaSet and a Replication Controller right now is the selector support.

#### ReplicaSets

```bash
#Create the replicaset
kubectl apply -f replicaset.yaml

#Get the status of the replicaset
kubectl get replicaset

#Retrieve detailed information about the replicaset
kubectl describe replicaset frontend

#See the status of pods deployed with replicaset
kubectl get pods

#select one of the pods from the ReplicaSet
kubect port-forward <ONE_POD_FROM_REPLICASET> 8080:80

#In another terminal window run
kubectl logs <ONE_POD_FROM_REPLICASET>
```

Go to http://localhost:8080/

```bash
#Scale a ReplicaSet
kubectl scale --replicas=4 rs/frontend
```

#### Deployment Controller

```bash
#Create the nginx deployment
kubectl create -f deploy-nginx.yaml

#Get deployment information
kubectl get deployments

#Where is the deployment
kubectl rollout status deployment/nginx-deployment

#update the deployments
kubectl apply -f deploy-nginx-1.9.1.yaml 

#Where is the deployment
kubectl rollout status deployment/nginx-deployment

#History of deployment
kubectl get replicaset

#View the pods in the deployment
kubectl get pods

#Get more detailed information about the deployment
kubectl describe deployment nginx-deployment

#Scale the deployment
kubectl apply -f deploy-nginx-1.9.1-scale.yaml 
```

### Cleanup

```bash
kubectl delete -f replicaset.yaml

kubectl delete -f deploy-nginx.yaml

```
