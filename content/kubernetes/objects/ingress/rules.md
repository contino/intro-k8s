+++
title = "Ingress Rules"
date = 2018-12-09T17:05:14-05:00
weight = 482
+++

Each http rule contains the following information:

* Host
* list of paths
* Backend service

Ingress Rule

```yaml
apiVersion: extensions/v1beta1
kind: Ingress
metadata:
  name: simple-fanout-example
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - host: foo.bar.com
    http:
      paths:
      - path: /foo
        backend:
          serviceName: service1
          servicePort: 4200
      - path: /bar
        backend:
          serviceName: service2
          servicePort: 8080

```
