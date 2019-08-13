+++
title = "Affinity and Anti-Affinity"
date = 2018-12-09T17:00:31-05:00
weight = 422
chapter = true
+++


# Node Affinity and Anti-Affinity


The affinity/anti-affinity feature, greatly expands the types of constraints you can express. The key enhancements are

* the language is more expressive (not just “AND of exact match”)
* you can indicate that the rule is “soft”/“preference” rather than a hard requirement, so if the scheduler can’t satisfy it, the pod will still be scheduled
* you can constrain against labels on other pods running on the node (or other topological domain), rather than against labels on the node itself, which allows rules about which pods can and cannot be co-located

The manfifest reads as: "If there are no nodes labelled as apple, then still schedule the pod to a node"

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: happypanda
  labels:
    app: redis
    segment: backend
    company: mycompany
    disk: ssd
spec:
  affinity:
    nodeAffinity:
      preferredDuringSchedulingIgnoredDuringExecution:
      - weight: 1
        preference:
          matchExpressions:
          - key: fruit
            operator: In
            values:
            - apple
  containers:
  - name: redis
    image: redis
    ports:
    - name: redisport
      containerPort: 6379
      protocol: TCP
```