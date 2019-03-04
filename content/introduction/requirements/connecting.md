+++
title = "Connecting"
date = 2018-12-09T16:52:57-05:00
weight = 43
+++


```bash
CLUSTER_NAME = k8s-workshop
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