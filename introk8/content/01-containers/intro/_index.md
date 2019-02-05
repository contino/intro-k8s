+++
title = "Intro"
date = 2018-12-09T17:22:06-05:00
weight = 10
chapter = true
+++

### Container Intro

#Dockerfile 
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



#### Docker Platform
* Docker Engine
* Docker Hub
* Docker Trusted Registry
* Docker Machine
* Docker Swarm
* Docker Compose
* Kitematic


#### Benefits of Docker
* Separation of concerns
* Developers focus on building their apps 
* System admins focus on deployment
* Fast development cycle
* Application portability
* Build in one environment, ship to another
* Scalability
* Easily spin up new containers if needed
* Run more apps on one host machine


#### Docker cli

* docker ps

* docker logs

* docker exec

https://www.katacoda.com/contino/courses/docker/basics 

