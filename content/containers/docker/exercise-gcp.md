+++
title = "Docker Exercises on GCP"
date = 2018-12-09T17:21:05-05:00
weight = 506
draft = true
+++

```bash
git clone https://github.com/contino/intro-k8
```

Navigate to the Docker exercises

```bash
MacBook-Pro in ~/Documents/code/contino/intro-k8
± |codelou S:6 U:11 ✗| → cd Exercises/docker-exercises/
l
 2019-07-22 14:56:02 ⌚  MacBook-Pro in ~/Documents/code/contino/intro-k8/Exercises/docker-exercises
± |codelou S:6 U:11 ✗| → ls -la
total 8
drwxr-xr-x   6 contino  staff  192 Jul 22 14:27 .
drwxr-xr-x   4 contino  staff  128 Jul 22 13:56 ..
-rw-r--r--   1 contino  staff  789 Jul 22 14:27 README.md
drwxr-xr-x   6 contino  staff  192 Jul 22 13:22 conference-details-service
drwxr-xr-x  10 contino  staff  320 Jul 22 13:22 conference-website
drwxr-xr-x   6 contino  staff  192 Jul 22 13:22 schedule-service

```
In order to push images to GCloud Container Registry credentials will be need 

[Docker login](https://docs.docker.com/engine/reference/commandline/login/) for GCR
```bash
gcloud auth configure-docker
```

Run these commands for all three services, conference-details-services, conference-website, schedule-service 

**Project ID = us-k8-workshop** 

[Build](https://docs.docker.com/engine/reference/commandline/build/) Images Locally
```bash
cd SERVICENAME
docker build -t YOURNAME_SERVICE us.gcr.io/us-k8-workshop/SERVICENAME:YOURNAME
```        

[Push](https://docs.docker.com/engine/reference/commandline/push/) Images to GCR Registry 
```bash
docker push us.gcr.io/us-k8-workshop/[SERVICENAME]:[YOURNAME]
```

Navigate to Container Registry in GCloud Console 

https://console.cloud.google.com/gcr/images/us-k8-workshop?project=us-k8-workshop