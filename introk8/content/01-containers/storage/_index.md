+++
title = "Storage"
date = 2018-12-09T17:21:32-05:00
weight = 60
chapter = true
+++

### Storage

### Layers

* An image is a collection of files and some meta data
* Images are comprised of multiple layers
* A layer is also just another image
* Each image contains software you want to run 
* Every image contains a base layer
* Docker uses a copy on write system
* Layers are read only


### Volumes
A Volume is a designated directory in a container, which is designed to persist data, independent of the container’s life cycle

* Volume changes are excluded when updating an image
* Persist when a container is deleted
* Can be mapped to a host folder
* Can be shared between containers

#### Volumes and Copy on write
* Volumes bypass the copy on write system
* Act as passthroughs to the host filesystem
* When you commit a container as a new image, the content of the volumes will not be brought into that image
* If a RUN instruction in a Dockerfile changes the content of a volume, those changes are not recorded neither.

#### Benefits of Volumes
* De-couple the data that is stored, from the container which created the data
* Good for sharing data between containers
* Can setup a data containers which has a volume you mount in other containers
* Share directories between multiple containers
* Bypassing the copy on write system to achieve native disk I/O performance
* Share a host directory with a container
* Share a single file between the host and container

#### Docker Volume command

The docker volume command contains a number of sub commands used to create and manage volumes
Commands are 

* docker volume create
* docker volume ls
* docker volume inspect
* docker volume rm
