+++
title = "Dockerfile"
date = 2018-12-09T17:21:05-05:00
weight = 503
chapter = true
+++

# [Dockerfile](https://github.com/shahadarsh/docker-k8s-workshop/blob/master/exercises/docker/conference-details-service/Dockerfile)

* Instructions specify what to do when building the image
* FROM instruction specifies what the base image should be 
* RUN instruction specifies a command to execute
* Comments start with “#”
* Remember, each line in a Dockerfile creates a new layer if it changes the state of the image
* You need to find the right balance between having lots of layers created for the image and readability of the Dockerfile
* Don’t install unnecessary packages
* One ENTRYPOINT per Dockerfile
* Combine similar commands into one by using “&&” and “\”  
* Use the caching system to your advantage
* The order of statements is important
* Add files that are least likely to change first and the ones most likely to change last
