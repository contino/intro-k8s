+++
title = "Security"
date = 2018-12-09T17:13:49-05:00
weight = 72
chapter = true
+++

### Security

### Container security primitives
SElinux 
AppArmor
Seccomp https://docs.docker.com/engine/security/seccomp/#run-without-the-default-seccomp-profile

### Container Pipeline
* Establish a pipeline to build a standard image
* Have a versioning policy
* Allow to only run images based of the standard image
* Use the same OS as the host
* Keep the image small
* Use a private registry
* Don’t embed secrets into images, use Hashicorp Vault
* https://www.cisecurity.org/benchmark/docker/
* https://github.com/docker/docker-bench-security


### K8 Security
* RBAC
* NetworkPolicy
* TLS
* Image Scanning
* Aquasec/Twistlock
* Integrating with HashiCorp Vault other public cloud secret stores
* Investigate using a container based OS (CoreOS, Atomic Linux)
* Harden and tweak
* Make sure to pass https://github.com/dev-sec/linux-baseline


### Vendors to add
* Aquasec https://www.aquasec.com/
* Twistlock https://www.twistlock.com/
* Sysdig Falco https://www.sysdig.org/falco/
