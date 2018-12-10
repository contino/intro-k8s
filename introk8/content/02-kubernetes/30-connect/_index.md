+++
title = "Connect"
date = 2018-12-09T17:04:27-05:00
weight = 30
chapter = true
+++

### Connecting to your GKE Cluster ###


### Prerequisites ###
```
Install Google Cloud SDK: https://cloud.google.com/sdk/install
Install kubectl: gcloud components install kubectl
```

### Google SDK Setup ###
```
gcloud auth login
(follow the verification steps)
```

### Configure SDK ###
```
./gcloud-setup.sh
```

### Retrieve Cluster Credentials (make sure there's no conflict with a pre-existing KUBECONFIG var) ###
```
gcloud container clusters get-credentials <cluster-name> --region <region>
```

### Confirm Cluster Connectivity ###
```
kubectl cluster-info
```
