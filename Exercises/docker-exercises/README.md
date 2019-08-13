## Docker Exercises

In order to push images to GCloud Container Registry credentials will be need 

[Docker login](https://docs.docker.com/engine/reference/commandline/login/) for GCR
```bash
gcloud auth configure-docker
```

Run these commands for all three services 

**Project ID = us-k8-workshop** 

[Build](https://docs.docker.com/engine/reference/commandline/build/) Images Locally
```bash
docker build -t YOURNAME_SERVICE us.gcr.io/us-k8-workshop/SERVICENAME:YOURNAME
```        

[Push](https://docs.docker.com/engine/reference/commandline/push/) Images to GCR Registry 
```bash
docker push us.gcr.io/us-k8-workshop/[SERVICENAME]:[YOURNAME]
```

Navigate to Container Registry in Gcloud Console 

https://console.cloud.google.com/gcr/images/us-k8-workshop?project=us-k8-workshop

