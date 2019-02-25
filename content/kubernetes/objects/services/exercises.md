+++
title = "Exercises"
date = 2018-12-09T17:00:31-05:00
weight = 492
+++

{{%attachments style="blue" title="Kubernetes yaml files" pattern=".*(yaml)"/%}}

### Pod Deployment with health checks, PersistentVolume and claim

Since we have created the mysql pod several times, here is a yaml file that creates it all.

### Create a secret for the password between Wordpress and MYSQL

```bash
kubectl create secret generic mysql-pass --from-literal=password=YOUR_PASSWORD
```

Verify it is there
```
kubectl get secrets
```

Deploy mysql
```
kubectl apply -f mysql-all.yaml
```

Verify mysql deployed properly
```
kubectl get deploy
```

### Services

Deploy the service for mysql
```
kubectl apply -f mysql-service.yaml
```

Verify the service has endpoints.
```
kubectl get services -o wide
```

### Application Deployment
deploy the application that will use mysqld
```
kubectl apply -f app.yaml
```

Verify Service
```
kubectl get services wordpress
```

### Clean up

```bash
kubectl delete -f mysql-all.yaml

kubectl delete -f mysql-service.yaml

kubectl delete -f app.yaml
```

