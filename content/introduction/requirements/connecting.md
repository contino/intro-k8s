+++
title = "Connecting"
date = 2018-12-09T16:52:57-05:00
weight = 13
+++


```bash
CLUSTER_NAME=dexnexus-k8s-cluster
```

* Set up the gcloud sdk

```bash
gcloud init
```

* Set gcloud project env var

```bash
PROJECT_ID=${1:-devnexus-k8s-workshop};

gcloud config set project ${PROJECT_ID};
gcloud config set compute/region us-east1;
gcloud config set compute/zone us-east1-b;
```

* Check to make sure account can see 

```bash
glcoud container clusters list
```

* Get the cluster credentials 

```bash
gcloud container clusters get-credentials ${CLUSTER_NAME};
```

* Make kubectl can see the cluster

```bash
kubectl cluster-info
```

* Allow docker to push to GCR
```bash
gcloud auth configure-docker
```
```bash
The following settings will be added to your Docker config file
located at [/Users/contino/.docker/config.json]:
 {
  "credHelpers": {
    "gcr.io": "gcloud",
    "us.gcr.io": "gcloud",
    "eu.gcr.io": "gcloud",
    "asia.gcr.io": "gcloud",
    "staging-k8s.gcr.io": "gcloud",
    "marketplace.gcr.io": "gcloud"
  }
}

Do you want to continue (Y/n)?  Y

Docker configuration file updated.

```
* Test
```bash
docker pull nginx
docker tag nginx us.gcr.io/PROJECT_NAME/nginx:your_name
docker push us.gcr.io/PROJECT_NAME/nginx:your_name
```
