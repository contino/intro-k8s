+++
title = "Storage"
date = 2018-12-09T17:21:32-05:00
weight = 403
chapter = true
+++

# Benefits of Volumes

* De-couple the data that is stored, from the container which created the data
* Good for sharing data between containers
* Can setup a data containers which has a volume you mount in other containers
* Share directories between multiple containers
* Bypassing the copy on write system to achieve native disk I/O performance
* Share a host directory with a container
* Share a single file between the host and container
