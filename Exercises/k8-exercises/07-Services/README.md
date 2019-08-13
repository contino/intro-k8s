### [Services](https://kubernetes.io/docs/concepts/services-networking/service/)


###### Pod Deployment with health checks, PersistentVolume and claim,

Since we have created the mysql pod several times, here is a yaml file that creates it all.

```bash
#create a secret for the password between Wordpress and MYSQL
kubectl create secret generic mysql-pass --from-literal=password=YOUR_PASSWORD

#verify it is there
kubectl get secrets

#deploy mysql
kubectl apply -f mysql-all.yaml

#verify mysql deployed properly
kubectl get deploy
```

### Services

```bash
#deploy the service for mysql
kubectl apply -f mysql-service.yaml

#verify the service has endpoints.
kubectl get services -o wide
```

#### Application Deployment
```bash
#deploy the application that will use mysqld
kubectl apply -f app.yaml


kubectl get services wordpress

```

### Clean up

```bash
kubectl delete -f mysql-all.yaml

kubectl delete -f mysql-service.yaml

kubectl delete -f app.yaml
```
