+++
title = "Controllers"
date = 2018-12-09T17:00:31-05:00
weight = 440
+++


### [Controllers](https://kubernetes.io/docs/concepts/workloads/controllers/)

In Kubernetes, a controller is a control loop that watches the shared state of the cluster through the apiserver and makes changes attempting to move the current state towards the desired state. There are several in the Kubernetes Architecture that support different functions in the system.

[Namespace controller](https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/) - Creates and updates the Namespaces in kubernetes

[Serviceaccounts controller](https://kubernetes.io/docs/reference/access-authn-authz/service-accounts-admin/) - Manages the service accounts in the system, which are for processes to interact with Kubernetes.

[Node Controller](https://kubernetes.io/docs/reference/command-line-tools-reference/kube-controller-manager/) - Responsible for noticing and responding when nodes go down.
Service Account & Token Controllers: Create default accounts and API access tokens for new namespaces.

[Deployment Controller](https://kubernetes.io/docs/concepts/workloads/controllers/deployment/) - A Deployment controller provides declarative updates for Pods and ReplicaSets.
                            
[Replication Controller](https://kubernetes.io/docs/concepts/workloads/controllers/replicationcontroller/) - Responsible for maintaining the correct number of pods for every replication controller object in the system.

[Endpoints Controller](https://kubernetes.io/docs/reference/generated/kubernetes-api/v1.10/#endpoints-v1-core) - Populates the Endpoints object (that is, joins Services & Pods). When services are created, the Endpoint controller manages the connection between services and the pods back the service.
