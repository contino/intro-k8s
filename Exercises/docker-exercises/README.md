## Docker Exercises

In order to push images to GCloud Container Registry credentials will be need 

[Docker login](https://docs.docker.com/engine/reference/commandline/login/) for GCR
```bash
gcloud auth configure-docker
```

Run these commands for all three services 

_Get Project ID from Instructors_ 

[Build](https://docs.docker.com/engine/reference/commandline/build/) Images Locally
```bash
docker build -t YOURNAME_SERVICE us.gcr.io/SERVICENAME:YOURNAME
```        

[Push](https://docs.docker.com/engine/reference/commandline/push/) Images to GCR Registry 
```bash
docker push us.gcr.io/[PROJECT_ID]/[SERVICENAME]:[YOURNAME]
```

Navigate to Container Registry in Gcloud Console 

https://console.cloud.google.com/gcr/images/[PROJECT_ID]?project=[PROJECT_ID]

