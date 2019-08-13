+++
title = "Microservices Exercise"
date = 2018-12-09T17:21:05-05:00
weight = 500
draft = true 
+++


Git clone [Exercises](https://github.com/contino/intro-k8)

Deploying all three services

```bash 
cd Exercises/docker-exercises
```

Make sure we have credentials for the GCP cluster

```
 gcloud container clusters list

gcloud container clusters get-credentials NAME_CLUSTER
 
```
Schedule Service 

```bash
cd schedule-service

kubectl create -f schedule-svc.yaml 

```

Conference web details 

```bash
cd ../conference-details-service

kubectl create -f conf-details-svc.yaml

```

Conference Website 

```bash
cd ../conference-website

kubectl create -f conf-website.yaml 

```