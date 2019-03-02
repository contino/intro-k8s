+++
title = "Resource Quotas"
date = 2018-12-09T17:00:31-05:00
weight = 430

+++

#### What

Requests - How much does this pod need to run

Limits - This pod only gets this much to run

#### Why
Kubernetes being a multi-tenant environment, some applications may hog resources and starve others, Resource Qoatas discourage this behavior 


### ![](/intro-k8/images/kubernetes/rq.png) 